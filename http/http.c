
#ifdef _WIN32
#include "curl-ca-bundle.crt.h"
#include <winsock2.h>
#endif

#include "os_generic.h"
#include <curl/curl.h>
#include <stdlib.h>
#include <string.h>

#include "umbox/umka/umka_api.h"

enum Method
{
	METHOD_GET,
	METHOD_POST
};

struct Progress
{
	int64_t dltotal, dlnow, ultotal, ulnow;
};

struct cResponse
{
	int status;
	char *headers;
	UmkaDynArray(char) body;
	struct Progress progress;
};

struct cRequest
{
	enum Method method;
	char *url;
	UmkaDynArray(char *) headers;
	UmkaDynArray(char) body;
};

struct wbuf
{
	char *str;
	int len;
	int cap;
};

struct RequestHandle
{
	CURL *curl;
	og_sema_t sema;
	og_thread_t thread;
	struct curl_slist *headers;
	struct wbuf body_data;
	struct wbuf header_data;
	CURLcode res;

	struct Progress progress;
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

static size_t
progress_callback(
    void *clientp, curl_off_t dltotal, curl_off_t dlnow, curl_off_t ultotal, curl_off_t ulnow)
{
	struct RequestHandle *rh = clientp;
	rh->progress.dltotal = dltotal;
	rh->progress.dlnow = dlnow;
	rh->progress.ulnow = ulnow;
	rh->progress.ultotal = ultotal;

	return 0;
}

void
request_cleanup(struct RequestHandle *rh)
{
	curl_easy_cleanup(rh->curl);
	OGDeleteSema(rh->sema);
	curl_slist_free_all(rh->headers);
	free(rh->body_data.str);
	free(rh->header_data.str);
}

void
request_handle_free(UmkaStackSlot *p, UmkaStackSlot *r)
{
	struct RequestHandle *rh = p->ptrVal;
	OGCancelThread(rh->thread);
	request_cleanup(rh);
}

void *
thread_handler(void *rh_void)
{
	struct RequestHandle *rh = rh_void;
	rh->res = curl_easy_perform(rh->curl);
	OGUnlockSema(rh->sema);
	return NULL;
}

// fn umc__request(cr: ^cRequest): ^struct{}
void
umc__request(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);
	struct cRequest *cr = api->umkaGetParam(p, 0)->ptrVal;

	struct RequestHandle *rh =
	    api->umkaAllocData(umka, sizeof(struct RequestHandle), request_handle_free);
	rh->curl = curl_easy_init();
	rh->body_data = (struct wbuf){
	    .str = calloc(32, sizeof(char)),
	    .cap = 32,
	};
	rh->header_data = (struct wbuf){
	    .str = calloc(32, sizeof(char)),
	    .cap = 32,
	};
	rh->sema = OGCreateSema();

	curl_easy_setopt(rh->curl, CURLOPT_URL, cr->url);
	curl_easy_setopt(rh->curl, CURLOPT_FOLLOWLOCATION, 1L);
	curl_easy_setopt(rh->curl, CURLOPT_WRITEFUNCTION, writefn);
	curl_easy_setopt(rh->curl, CURLOPT_WRITEDATA, &rh->body_data);
	curl_easy_setopt(rh->curl, CURLOPT_XFERINFODATA, rh);
	curl_easy_setopt(rh->curl, CURLOPT_NOPROGRESS, 0);
	curl_easy_setopt(rh->curl, CURLOPT_XFERINFOFUNCTION, progress_callback);
	curl_easy_setopt(rh->curl, CURLOPT_HEADERDATA, &rh->header_data);
	if (cr->method == METHOD_POST) {
		curl_easy_setopt(rh->curl, CURLOPT_POSTFIELDS, cr->body.data);
		curl_easy_setopt(
		    rh->curl, CURLOPT_POSTFIELDSIZE, api->umkaGetDynArrayLen(&cr->body));
	}

#ifdef _WIN32
	struct curl_blob blob = {0};
	blob.data = (uint8_t *)ca_bundle;
	blob.len = sizeof(ca_bundle);
	curl_easy_setopt(rh->curl, CURLOPT_CAINFO_BLOB, &blob);
#endif

	int headerCount = api->umkaGetDynArrayLen(&cr->headers);
	if (headerCount > 0) {
		for (int i = 0; i < headerCount; i++) {
			rh->headers = curl_slist_append(rh->headers, cr->headers.data[i]);
		}

		curl_easy_setopt(rh->curl, CURLOPT_HTTPHEADER, rh->headers);
	}

	rh->thread = OGCreateThread(thread_handler, rh);

	api->umkaGetResult(p, r)->ptrVal = rh;
}

// fn umc__poll(rh: ^struct{}, cresp: ^cResponse): int
void
umc__poll(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);
	struct RequestHandle *rh = api->umkaGetParam(p, 0)->ptrVal;
	struct cResponse *cresp = api->umkaGetParam(p, 1)->ptrVal;
	const UmkaType *bodyType = api->umkaGetFieldType(
	    api->umkaGetBaseType(api->umkaGetParamType(p, 1)), "body");

	cresp->progress = rh->progress;

	if (OGGetSema(rh->sema) == 0) {
		api->umkaGetResult(p, r)->intVal = -1;
		return;
	}

	if (rh->res != CURLE_OK)
		goto cleanup;

	curl_easy_getinfo(rh->curl, CURLINFO_RESPONSE_CODE, &cresp->status);

	rh->body_data.str[rh->body_data.len] = 0;
	api->umkaMakeDynArray(umka, &cresp->body, bodyType, rh->body_data.len);
	memcpy(cresp->body.data, rh->body_data.str, rh->body_data.len);

	rh->header_data.str[rh->header_data.len] = 0;
	cresp->headers = api->umkaMakeStr(umka, rh->header_data.str);

cleanup:
	api->umkaGetResult(p, r)->intVal = rh->res;
}

// fn umc__strerror(code: int): str
void
umc__strerror(UmkaStackSlot *p, UmkaStackSlot *r)
{
	void *umka = r->ptrVal;
	UmkaAPI *api = umkaGetAPI(umka);
	int code = api->umkaGetParam(p, 0)->intVal;
	api->umkaGetResult(p, r)->ptrVal = api->umkaMakeStr(umka, curl_easy_strerror(code));
}
