
#include <curl/curl.h>
#include <stdlib.h>
#include <string.h>

#include "pak/io/io.h"

#include <umka_api.h>

#ifdef _WIN32
#include "curl-ca-bundle.crt.h"
#endif

struct GetParams
{
	char *user_agent;
	char *header;
};

struct PostParams
{
	char *user_agent;
	char *header;
};

struct Response
{
	bool ok;
	char *err;
	int64_t code;
	char *content_type;
};

struct memory
{
	struct ioum_reader_writer rw;
	uint8_t *data;
	size_t cap;
	size_t writePtr;
	size_t readPtr;
};

static size_t
writefn(char *ptr, size_t size, size_t nmemb, struct ioum_writer *w)
{
	return w->write(w, ptr, size * nmemb);
}

// fn umc__get(url: str, params: ^GetParams, out: ^Response, typeofbytes: ^void)
void
umc__get(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	char *url = p[3].ptrVal;
	struct GetParams *params = p[2].ptrVal;
	struct Response *ret = p[1].ptrVal;
	struct ioum_writer *w = *(struct ioum_writer **)p[0].ptrVal;
	ret->ok = false;

	CURL *curl = curl_easy_init();
	if (!curl) {
		ret->err = umkaMakeStr(umka, "curl_easy_init() failed");
		return;
	}

	CURLcode res;
	curl_easy_setopt(curl, CURLOPT_URL, url);
	curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefn);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, w);

#ifdef _WIN32
	struct curl_blob blob = {0};
	blob.data = (uint8_t *)ca_bundle;
	blob.len = sizeof(ca_bundle);
	curl_easy_setopt(curl, CURLOPT_CAINFO_BLOB, &blob);
#endif

	if (umkaGetStrLen(params->header) > 0) {
		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, params->header);
	}
	if (umkaGetStrLen(params->user_agent) > 0) {
		curl_easy_setopt(curl, CURLOPT_USERAGENT, params->user_agent);
	}

	res = curl_easy_perform(curl);
	if (res != CURLE_OK) {
		ret->err = umkaMakeStr(umka, curl_easy_strerror(res));
		goto cleanup;
	}

	curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &ret->code);

	char *content_type;
	curl_easy_getinfo(curl, CURLINFO_CONTENT_TYPE, &content_type);

	ret->ok = true;
	ret->content_type = umkaMakeStr(umka, content_type);

cleanup:
	curl_easy_cleanup(curl);
}

static size_t
readfn(void *ptr, size_t size, size_t nmemb, struct ioum_reader *r)
{
	return r->read(r, ptr, size * nmemb);
}

// fn umc__post(url: str, body: str, params: ^GetParams, out: ^Response, typeofbytes: ^void)
void
umc__post(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	char *url = p[4].ptrVal;
	struct PostParams *params = p[3].ptrVal;
	struct Response *ret = p[2].ptrVal;
	struct ioum_reader *reader = *(struct ioum_reader **)p[1].ptrVal;
	struct ioum_writer *w = *(struct ioum_writer **)p[0].ptrVal;
	ret->ok = false;

	CURL *curl = curl_easy_init();
	if (!curl) {
		ret->err = umkaMakeStr(umka, "curl_easy_init() failed");
		return;
	}

	curl_easy_setopt(curl, CURLOPT_URL, url);
	curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
	curl_easy_setopt(curl, CURLOPT_POST, 1L);
	curl_easy_setopt(curl, CURLOPT_READFUNCTION, readfn);
	curl_easy_setopt(curl, CURLOPT_READDATA, reader);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefn);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, w);

#ifdef _WIN32
	struct curl_blob blob = {0};
	blob.data = (uint8_t *)ca_bundle;
	blob.len = sizeof(ca_bundle);
	curl_easy_setopt(curl, CURLOPT_CAINFO_BLOB, &blob);
#endif

	if (umkaGetStrLen(params->header) > 0) {
		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, params->header);
	}

	if (umkaGetStrLen(params->user_agent) > 0) {
		curl_easy_setopt(curl, CURLOPT_USERAGENT, params->user_agent);
	}

	CURLcode res = curl_easy_perform(curl);
	if (res != CURLE_OK) {
		ret->err = umkaMakeStr(umka, curl_easy_strerror(res));
		goto cleanup;
	}

	curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &ret->code);
	char *content_type;
	curl_easy_getinfo(curl, CURLINFO_CONTENT_TYPE, &content_type);

	ret->content_type = umkaMakeStr(umka, content_type);
	ret->ok = true;

cleanup:
	curl_easy_cleanup(curl);
}
