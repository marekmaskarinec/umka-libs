# HTTP

An HTTP client library for umka. It works both on Linux and Windows using
`libcurl`. Install using [PAK](https://pak.tophat2d.dev).

## License

See `LICENSE` in the repo root.

## Example

```
fn main() {
    resp := get(
        encodeUrl("http://httpbin.org/get", {
            "foo": "bar",
            "baz": 42
        }),
        {
            userAgent: "my user agent"
        }
    )

    printf("Ok: %v\n", resp.ok)
    printf("Error: %v\n", resp.err)
    printf("Code: %v\n", resp.status)
    printf("Content type: %v\n", resp.contentType)
    printf("Body: %v\n", resp.body)
    
    resp = post(
        "http://httpbin.org/post",
        "Hello, world!",
        {
            userAgent: "my user agent"
        }
    ) 

    printf("Ok: %v\n", resp.ok)
    printf("Error: %v\n", resp.err)
    printf("Code: %v\n", resp.status)
    printf("Content type: %v\n", resp.contentType)
    printf("Body: %v\n", resp.body)
}
```

## Documentation

### struct Response

```
type Response* = struct {
    ok: bool         // true if the request was successful
    err: str         // error message if the request failed
    status: int      // HTTP status code
    body: str        // response body
    contentType: str // response content type
}
```

Http response struct.


### struct GetParams

```
type GetParams* = struct {
    userAgent: str
    header: str
}
```

Optional parameters for the `get` function.


### fn get

```
fn get*(url: str, params: GetParams = {}): Response {
```

Make a GET request.


### fn encodeUrl

```
fn encodeUrl*(url: str, args: map[str]any): str {
```

Encode a URL with query parameters.


### struct PostParams

```
type PostParams* = struct {
    userAgent: str
    header: str
}
```

Optional parameters for the `post` function.


### fn post

```
fn post*(url: str, body: str, params: PostParams = {}): Response {
```

Make a POST request.
