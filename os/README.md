# os.um

An OS operation library for Umka. Download using
[PAK](https://pak.tophat2d.dev/package/os).

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

## Documentation

### type Errno

```
type Errno* = int
```

An errno is a number that represents an error. It is 0 on success.


### fn mkdir

```
fn mkdir*(path: str): Errno {
```

Creates a directory at path. Returns 0 on success, or an errno on failure.


### fn remove

```
fn remove*(path: str): Errno {
```

Removes a file at path. Returns 0 on success, or an errno on failure.


### fn strerror

```
fn strerror*(errno: Errno): str {
```

Returns a string describing the given errno.


### fn listdir

```
fn listdir*(path: str): ([]str, Errno) {
```

Returns a list of files in the given directory, second argument is 0 on
success or an errno on failure.


### fn isfile

```
fn isfile*(path: str): bool {
```

Returns true if the given path is a regular file, false otherwise.
If the file doesn't exist, returns false.


### fn isdir

```
fn isdir*(path: str): bool {
```

Returns true if the given path is a directory, false otherwise.
If the directory doesn't exist, returns false.


### fn walk

```
fn walk*(dir: str, cb: fn(file: str), excludeDirs: bool = false): Errno {
```

Walks the given directory, calling the given callback for each file. If
excludeDirs is true, directories will not be passed to the callback.


