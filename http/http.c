
#include <curl/curl.h>
#include <stdlib.h>
#include <string.h>

#include <umka_api.h>

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
	UmkaDynArray(uint8_t) body;
	char *content_type;
};

struct wbuf
{
	char *str;
	int len;
	int cap;
};

static size_t
writefn(char *ptr, size_t size, size_t nmemb, struct wbuf *b)
{
	if (b->len + nmemb < b->cap) {
		memcpy(b->str + b->len, ptr, nmemb);
		b->len += nmemb;
		return nmemb;
	}

	if (b->len + nmemb < b->cap * 2) {
		b->str = realloc(b->str, b->cap *= 2);
		memcpy(b->str + b->len, ptr, nmemb);
		b->len += nmemb;
		return nmemb;
	}

	b->cap = (b->len + nmemb) * 2;
	b->str = realloc(b->str, b->cap);
	memcpy(b->str + b->len, ptr, nmemb);
	b->len += nmemb;

	return nmemb;
}

static void *bytesType = NULL;

// fn umc__get(url: str, params: ^GetParams, out: ^Response)
void
umc__get(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	char *url = p[2].ptrVal;
	struct GetParams *params = p[1].ptrVal;
	struct Response *ret = p[0].ptrVal;
	ret->ok = false;

	CURL *curl = curl_easy_init();
	if (!curl) {
		ret->err = umkaMakeStr(umka, "curl_easy_init() failed");
		return;
	}

	struct wbuf b = {
	    .str = calloc(32, sizeof(char)),
	    .cap = 32,
	};

	CURLcode res;
	curl_easy_setopt(curl, CURLOPT_URL, url);
	curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefn);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, &b);
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

	b.str[b.len] = 0;

	ret->ok = true;

	if (bytesType == NULL) {
		bytesType = umkaGetType(umka, "http.um", "__Bytes");
	}

	umkaMakeDynArray(umka, &ret->body, bytesType, b.len);
	memcpy(ret->body.data, b.str, b.len);
	ret->content_type = umkaMakeStr(umka, content_type);

cleanup:
	free(b.str);
	curl_easy_cleanup(curl);
}

// fn umc__post(url: str, body: str, params: ^GetParams, out: ^Response)
void
umc__post(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	char *url = p[3].ptrVal;
	char *body = p[2].ptrVal;
	struct PostParams *params = p[1].ptrVal;
	struct Response *ret = p[0].ptrVal;
	ret->ok = false;

	CURL *curl = curl_easy_init();
	if (!curl) {
		ret->err = umkaMakeStr(umka, "curl_easy_init() failed");
		return;
	}

	struct wbuf b = {
	    .str = calloc(32, sizeof(char)),
	    .cap = 32,
	};

	curl_easy_setopt(curl, CURLOPT_URL, url);
	curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
	curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefn);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, &b);

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

	b.str[b.len] = 0;
	if (bytesType == NULL) {
		bytesType = umkaGetType(umka, "http.um", "__Bytes");
	}

	umkaMakeDynArray(umka, &ret->body, bytesType, b.len);
	memcpy(ret->body.data, b.str, b.len);
	ret->content_type = umkaMakeStr(umka, content_type);

	ret->ok = true;

cleanup:
	free(b.str);
	curl_easy_cleanup(curl);
}
