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
