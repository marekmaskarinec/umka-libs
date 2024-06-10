# os.um

An OS operation library for Umka.

## Example

```
import (
        "pak/os/os.um"
)

fn main() {
        // Make a directory
        os.mkdir("test")

        // Test a file
        printf("isfile(\"test\")   = %v\n", os.isfile("test"))
        printf("isdir(\"test\")    = %v\n", os.isdir("test"))

        // Recursively walk through a directory
        printf("Walk dir:\n")
        if errno := os.walk(".", fn(file: str) {
                printf("\t%v\n", file)
        }); errno != 0 {
                printf("walk failed: %v\n", os.strerror(errno))
        }

        // Remove a directory (not recursive)
        if errno := os.remove("test"); errno != 0 {
                printf("rmfile failed: %v\n", os.strerror(errno))
        }
}
```

## License

Unlicense/MIT
