
#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <umka_api.h>

#ifdef _WIN32
#include <windows.h>

#include <direct.h>
#include <fileapi.h>
#include <winbase.h>
#define stat _stat
#else
#include <dirent.h>
#include <unistd.h>
#endif

// fn umc__mkdir(path: string): int
void
umc__mkdir(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = p[0].ptrVal;

#ifdef _WIN32
	r->intVal = _mkdir(path) ? errno : 0;
#else
	r->intVal = mkdir(path, 0777) ? errno : 0;
#endif
}

// fn umc__remove(path: string): int
void
umc__remove(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = p[0].ptrVal;

	r->intVal = remove(path) ? errno : 0;
}

// fn umc__strerror(errno: int): string
void
umc__strerror(UmkaStackSlot *p, UmkaStackSlot *r)
{
	int errno_ = p[0].intVal;
	r->ptrVal = umkaMakeStr(r->ptrVal, strerror(errno_));
}

// fn umc__link(target: str, linkpath: str): int
void
umc__link(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *target = p[1].ptrVal;
	char *linkpath = p[0].ptrVal;
	r->intVal = 0;

#ifdef _WIN32
	struct stat st;
	if (stat(target, &st)) {
		r->intVal = errno;
		return;
	}

	DWORD flag = 0;
	if (S_ISDIR(st.st_mode))
		flag |= 0x1;
	r->intVal = CreateSymbolicLinkA(linkpath, target, flag) ? 0 : EAGAIN;
#else
	r->intVal = symlink(target, linkpath) ? errno : 0;
#endif
}

// fn umc__listdir(path: str, files: ^[]str, strArrType: ^void): int
void
umc__listdir(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = p[2].ptrVal;
	UmkaDynArray(char *) *files = p[1].ptrVal;
	void *str_arr_type = p[0].ptrVal;
	void *umka = r->ptrVal;

#ifdef _WIN32
	int count = 0;
	HANDLE hfind;
	WIN32_FIND_DATA data;

	char *path_ = malloc(strlen(path) + 3);
	strcpy(path_, path);
	strcat(path_, "\\*");

	if ((hfind = FindFirstFile(path_, &data)) != INVALID_HANDLE_VALUE) {
		do {
			++count;
		} while (FindNextFile(hfind, &data));
		FindClose(hfind);
	} else {
		r->intVal = ENOENT;
		return;
	}

	umkaMakeDynArray(umka, files, str_arr_type, count);

	hfind = FindFirstFile(path_, &data);
	int i = 0;
	do {
		files->data[i++] = umkaMakeStr(umka, data.cFileName);
	} while (FindNextFile(hfind, &data));

	FindClose(hfind);
#else
	struct dirent *e = NULL;
	DIR *d = opendir(path);
	if (d == NULL) {
		r->intVal = errno;
		return;
	}

	long start = telldir(d);

	int count = 0;
	while ((e = readdir(d)) != NULL)
		++count;

	umkaMakeDynArray(umka, files, str_arr_type, count);

	seekdir(d, start);
	for (int i = 0; (e = readdir(d)) != NULL; i++)
		files->data[i] = umkaMakeStr(umka, e->d_name);

	closedir(d);
#endif
	r->intVal = 0;
}

// fn umc__isfile(path: str): bool
void
umc__isfile(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = p[0].ptrVal;
	r->intVal = 0;

	struct stat st;
	if (stat(path, &st))
		return;

	r->intVal = S_ISREG(st.st_mode);
}

// fn umc__isdir(path: str): bool
void
umc__isdir(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = p[0].ptrVal;
	r->intVal = 0;

	struct stat st;
	if (stat(path, &st))
		return;

	r->intVal = S_ISDIR(st.st_mode);
}

// fn umc__chmod(path: str, mode: uint32): int
void
umc__chmod(UmkaStackSlot *p, UmkaStackSlot *r)
{
	char *path = p[1].ptrVal;
	int mode = p[0].intVal;
	r->intVal = chmod(path, mode);
}