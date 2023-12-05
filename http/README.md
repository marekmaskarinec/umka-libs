# HTTP

An HTTP client library for umka. It works both on Linux and Windows using
`libcurl`. Install using [PAK](https://pak.tophat2d.dev).

## License

See `LICENSE` in the repo root.

## Example

```
import (
    "pak/http/http.um"
)

fn main() {
    resp := http.get(
        http.encodeUrl("http://httpbin.org/get", {
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
    printf("Body: %v\n", str([]char(resp.body)))

    resp = http.post(
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
    printf("Body: %v\n", str([]char(resp.body)))
}
```

# Documentation

## struct Response

```
type Response* = struct {
    ok: bool         // true if the request was successful
    err: str         // error message if the request failed
    status: int      // HTTP status code
    contentType: str // response content type
}
```

Http response struct.

## struct GetParams

```
type GetParams* = struct {
    userAgent: str
    header: str
}
```

Optional parameters for the `get` function.

## fn get

```
fn get*(url: str, out: io.Writer, params: GetParams = {}): Response {
```

Make a GET request.

## fn encodeUrl

```
fn encodeUrl*(url: str, args: map[str]any): str {
```

Encode a URL with query parameters.

## struct PostParams

```
type PostParams* = struct {
    userAgent: str
    header: str
}
```

Optional parameters for the `post` function.

## fn post

```
fn post*(url: str, inp: io.Reader, out: io.Writer, params: PostParams = {}): Response {
```

Make a POST request.

## Example

```
fn main() {
    dat := io.mkMemory({})
    resp := get(
        encodeUrl("https://httpbin.org/get", {
            "foo": "bar",
            "baz": 42
        }),
        dat,
        {
            userAgent: "my user agent"
        }
    )

    printf("Ok: %v\n", resp.ok)
    printf("Error: %v\n", resp.err)
    printf("Code: %v\n", resp.status)
    printf("Content type: %v\n", resp.contentType)
    printf("Body: %v\n", str([]char(dat.read())))

    f := std.fopen("out", "w")
    dat = io.mkFile(f)
    get("https://httpbin.org/get", dat)
    std.fclose(f)

    dat = io.mkMemory({})
    resp = post(
        "https://httpbin.org/post",
        io.mkMemory([]uint8([]char("Hello world!"))),
        dat,
        {
            userAgent: "my user agent"
        }
    )

    printf("Ok: %v\n", resp.ok)
    printf("Error: %v\n", resp.err)
    printf("Code: %v\n", resp.status)
    printf("Content type: %v\n", resp.contentType)
    printf("Body: %v\n", str([]char(dat.read())))
}
```
