
#include <curl/curl.h>
#include <stdlib.h>
#include <string.h>

#include <umka_api.h>

#ifdef _WIN32
#include "curl-ca-bundle.crt.h"
#endif

struct GetParams
{
	char *user_agent;
	UmkaDynArray(char *) headers;
};

struct PostParams
{
	char *user_agent;
	UmkaDynArray(char *) headers;
};

struct Response
{
	bool ok;
	char *err;
	int64_t code;
	char *content_type;
	UmkaDynArray(char) body;
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

// fn umc__get(url: str, params: ^GetParams, out: ^Response, typeof: ^void)
void
umc__get(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);
	char *url = p[3].ptrVal;
	struct GetParams *params = p[2].ptrVal;
	struct Response *ret = p[1].ptrVal;
	void *typeptr = p[0].ptrVal;
	ret->ok = false;

	CURL *curl = curl_easy_init();
	if (!curl) {
		ret->err = api->umkaMakeStr(umka, "curl_easy_init() failed");
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
	curl_easy_setopt(curl, CURLOPT_ACCEPT_ENCODING, "");

#ifdef _WIN32
	struct curl_blob blob = {0};
	blob.data = (uint8_t *)ca_bundle;
	blob.len = sizeof(ca_bundle);
	curl_easy_setopt(curl, CURLOPT_CAINFO_BLOB, &blob);
#endif

	int headerCount = api->umkaGetDynArrayLen(&params->headers);
	struct curl_slist *headers = NULL;
	if (headerCount > 0) {
		for (int i = 0; i < headerCount; i++) {
			headers = curl_slist_append(headers, params->headers.data[i]);
		}

		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
	}

	if (api->umkaGetStrLen(params->user_agent) > 0) {
		curl_easy_setopt(curl, CURLOPT_USERAGENT, params->user_agent);
	}

	res = curl_easy_perform(curl);
	if (res != CURLE_OK) {
		ret->err = api->umkaMakeStr(umka, curl_easy_strerror(res));
		goto cleanup;
	}

	if (headerCount > 0) {
		curl_slist_free_all(headers);
	}

	curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &ret->code);

	char *content_type;
	curl_easy_getinfo(curl, CURLINFO_CONTENT_TYPE, &content_type);

	b.str[b.len] = 0;

	ret->ok = true;

	api->umkaMakeDynArray(umka, &ret->body, typeptr, b.len);
	memcpy(ret->body.data, b.str, b.len);
	ret->content_type = api->umkaMakeStr(umka, content_type);

cleanup:
	free(b.str);
	curl_easy_cleanup(curl);
}

// fn umc__post(url: str, body: ^[]char, params: ^GetParams, out: ^Response, typeofbytes: ^void)
void
umc__post(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);

	char *url = p[4].ptrVal;
	UmkaDynArray(char) *body = p[3].ptrVal;
	struct PostParams *params = p[2].ptrVal;
	struct Response *ret = p[1].ptrVal;
	void *typeptr = p[0].ptrVal;

	ret->ok = false;

	CURL *curl = curl_easy_init();
	if (!curl) {
		ret->err = api->umkaMakeStr(umka, "curl_easy_init() failed");
		return;
	}

	struct wbuf b = {
	    .str = calloc(32, sizeof(char)),
	    .cap = 32,
	};

	curl_easy_setopt(curl, CURLOPT_URL, url);
	curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
	curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body->data);
	curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, api->umkaGetDynArrayLen(body));
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefn);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, &b);
	curl_easy_setopt(curl, CURLOPT_ACCEPT_ENCODING, "");

#ifdef _WIN32
	struct curl_blob blob = {0};
	blob.data = (uint8_t *)ca_bundle;
	blob.len = sizeof(ca_bundle);
	curl_easy_setopt(curl, CURLOPT_CAINFO_BLOB, &blob);
#endif

	int headerCount = api->umkaGetDynArrayLen(&params->headers);
	struct curl_slist *headers = NULL;
	if (headerCount > 0) {
		for (int i = 0; i < headerCount; i++) {
			headers = curl_slist_append(headers, params->headers.data[i]);
		}

		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
	}

	if (api->umkaGetStrLen(params->user_agent) > 0) {
		curl_easy_setopt(curl, CURLOPT_USERAGENT, params->user_agent);
	}

	CURLcode res = curl_easy_perform(curl);
	if (res != CURLE_OK) {
		ret->err = api->umkaMakeStr(umka, curl_easy_strerror(res));
		goto cleanup;
	}

	if (headerCount > 0) {
		curl_slist_free_all(headers);
	}

	curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &ret->code);
	char *content_type;
	curl_easy_getinfo(curl, CURLINFO_CONTENT_TYPE, &content_type);

	b.str[b.len] = 0;

	api->umkaMakeDynArray(umka, &ret->body, typeptr, b.len);
	memcpy(ret->body.data, b.str, b.len);

	ret->content_type = api->umkaMakeStr(umka, content_type);
	ret->ok = true;

cleanup:
	free(b.str);
	curl_easy_cleanup(curl);
}
