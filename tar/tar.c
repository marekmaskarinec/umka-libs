
#include <microtar.h>
#include <stdint.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <umka_api.h>

#ifdef _WIN32
#else
#include <unistd.h>
#endif

typedef struct
{
	uint32_t mode;
	uint32_t owner;
	uint32_t size;
	uint32_t mtime;
	uint32_t type;
	char *name;
	char *linkname;
} File;

// fn umc__tar_strerror(err: int): str
void
umc__tar_strerror(UmkaStackSlot *p, UmkaStackSlot *r)
{
	int err = p[0].intVal;
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);

	r->ptrVal = api->umkaMakeStr(umka, mtar_strerror(err));
}

// fn umc__tar_open(path: str, mode: str, out: ^^struct{}): int
void
umc__tar_open(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = (char *)p[2].ptrVal;
	char *mode = (char *)p[1].ptrVal;
	mtar_t **out = (mtar_t **)p[0].ptrVal;
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);

	*out = api->umkaAllocData(umka, sizeof(mtar_t), NULL);
	r->intVal = mtar_open(*out, path, mode);

	if (r->intVal != MTAR_ESUCCESS) {
		*out = NULL;
	}
}

static int
btar_close(mtar_t *tar)
{
	free(tar->stream);
	return 0;
}

static int
btar_read(mtar_t *tar, void *data, unsigned size)
{
	memcpy(data, tar->stream + tar->pos, size);
	tar->pos += size;
	return 0;
}

static int
btar_seek(mtar_t *tar, unsigned pos)
{
	tar->pos = pos;
	return 0;
}

static int
btar_write(mtar_t *tar, const void *data, unsigned size)
{
	return MTAR_EFAILURE;
}

// fn umc__tar_open_bytes(bytes: ^byte, out: ^^struct{}): int
void
umc__tar_open_bytes(UmkaStackSlot *p, UmkaStackSlot *r)
{
	UmkaDynArray(uint8_t) *bytes_in = p[1].ptrVal;
	mtar_t **out = (mtar_t **)p[0].ptrVal;
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);

	*out = api->umkaAllocData(umka, sizeof(mtar_t), NULL);
	size_t bytes_len = api->umkaGetDynArrayLen(bytes_in);
	uint8_t *bytes = malloc(bytes_len);
	if (bytes == NULL) {
		r->intVal = MTAR_EFAILURE;
		return;
	}
	memcpy(bytes, bytes_in->data, bytes_len);

	**out = (mtar_t){
	    .stream = bytes,
	    .remaining_data = bytes_len,
	    .close = btar_close,
	    .read = btar_read,
	    .seek = btar_seek,
	    .write = btar_write,
	};

	r->intVal = 0;
}

// fn umc__tar_get_files(tar: ^struct{}, out: ^[]File, fileArrType: ^void): int
void
umc__tar_get_files(UmkaStackSlot *p, UmkaStackSlot *r)
{
	mtar_t *tar = (mtar_t *)p[2].ptrVal;
	UmkaDynArray(File) *out = p[1].ptrVal;
	void *fileArrType = p[0].ptrVal;
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);
	r->intVal = 0;

	int ret = mtar_seek(tar, 0);
	if (ret) {
		r->intVal = ret;
		return;
	}

	int count = 0;
	mtar_header_t h;
	while ((mtar_read_header(tar, &h)) != MTAR_ENULLRECORD) {
		++count;
		mtar_next(tar);
	}

	api->umkaMakeDynArray(umka, out, fileArrType, count);

	mtar_seek(tar, 0);
	for (int i = 0; i < count; ++i) {
		mtar_read_header(tar, &h);
		out->data[i] = (File){
		    .mode = h.mode,
		    .owner = h.owner,
		    .size = h.size,
		    .mtime = h.mtime,
		    .type = h.type,
		    .name = api->umkaMakeStr(umka, h.name),
		    .linkname = api->umkaMakeStr(umka, h.linkname),
		};
		mtar_next(tar);
	}
}

// fn umc__tar_read_bin(tar: ^struct{}, file: str, out: ^[]byte, byteArrType: ^void): int
void
umc__tar_read(UmkaStackSlot *p, UmkaStackSlot *r)
{
	mtar_t *tar = (mtar_t *)p[3].ptrVal;
	char *file = p[2].ptrVal;
	UmkaDynArray(uint8_t) *out = p[1].ptrVal;
	void *byteArrType = p[0].ptrVal;
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);
	r->intVal = 0;

	mtar_header_t h;
	int ret = mtar_find(tar, file, &h);
	if (ret) {
		r->intVal = ret;
		return;
	}

	api->umkaMakeDynArray(umka, out, byteArrType, h.size);

	ret = mtar_read_data(tar, out->data, h.size);
	if (ret) {
		r->intVal = ret;
		return;
	}
}

// fn umc__tar_add_file(tar: ^struct{}, file: str): int
void
umc__tar_add_file(UmkaStackSlot *p, UmkaStackSlot *r)
{
	mtar_t *tar = p[1].ptrVal;
	char *file = p[0].ptrVal;
	r->intVal = 0;

#ifdef _WIN32
#define stat _stat
#endif

	struct stat st;
	stat(file, &st);

	mtar_header_t h = {
	    .mtime = st.st_mtime,
	    .size = st.st_size,
	    .type = S_ISREG(st.st_mode) ? MTAR_TREG : MTAR_TDIR,
	    .mode = st.st_mode,
	};
	strncpy(h.name, file, sizeof(h.name) - 1);

	if (S_ISDIR(st.st_mode)) {
		return;
	}

	FILE *f = fopen(file, "rb");
	if (!f) {
		r->intVal = MTAR_EFAILURE;
		return;
	}

	mtar_write_header(tar, &h);

	fseek(f, 0, SEEK_END);
	size_t size = ftell(f);
	fseek(f, 0, SEEK_SET);

	char *buf = malloc(size);
	fread(buf, 1, size, f);

	r->intVal = mtar_write_data(tar, buf, size);
	free(buf);
	fclose(f);
}

// fn umc__tar_close(tar: ^struct{}): int
void
umc__tar_close(UmkaStackSlot *p, UmkaStackSlot *r)
{
	mtar_t *tar = p[0].ptrVal;
	r->intVal = mtar_close(tar);
}

// fn umc__tar_finalize(tar: ^struct{}): int
void
umc__tar_finalize(UmkaStackSlot *p, UmkaStackSlot *r)
{
	mtar_t *tar = p[0].ptrVal;
	r->intVal = mtar_finalize(tar);
}
