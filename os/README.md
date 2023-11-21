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

## type Errno

```
type Errno* = int
```

An errno is a number that represents an error. It is 0 on success.

## fn isfile

```
fn isfile*(path: str): bool {
```

Returns true if the given path is a regular file, false otherwise.
If the file doesn't exist, returns false.

## fn isdir

```
fn isdir*(path: str): bool {
```

Returns true if the given path is a directory, false otherwise.
If the directory doesn't exist, returns false.

## fn islink

```
fn islink*(path: str): bool {
```

Returns true if the given path is a symbolic link, false otherwise.
If the link doesn't exist, returns false.

## fn mkdir

```
fn mkdir*(path: str): Errno {
```

Creates a directory at path. Returns 0 on success, or an errno on failure.

## fn mkdirp

```
fn mkdirp*(path: str): Errno {
```

If the directory at path doesn't exist, creates it and all parent
directories. Returns EALREADY if part of the path already exists and is a
file.

## fn remove

```
fn remove*(path: str): Errno {
```

Removes a file at path. Returns 0 on success, or an errno on failure.

## fn strerror

```
fn strerror*(errno: Errno): str {
```

Returns a string describing the given errno.

## fn link

```
fn link*(target: str, link: str): Errno {
```

Creates a symbolic link at link pointing to target. Returns 0 on success, or
an errno on failure.

## fn listdir

```
fn listdir*(path: str): ([]str, Errno) {
```

Returns a list of files in the given directory, second argument is 0 on
success or an errno on failure.

## struct WalkArgs

```
type WalkArgs* = struct {
        excludeDirs: bool // if true, directories will not be walked
        skipLinks: bool   // if true, symbolic links will not be walked
}
```

Arguments to the walk function.

## fn walk

```
fn walk*(dir: str, cb: fn(file: str), args: WalkArgs = {}): Errno {
```

Walks the given directory, calling the given callback for each file.

## fn chmod

```
fn chmod*(path: str, mode: int): Errno {
```

Changes the permissions of the given file. Returns 0 on success, or an
errno on failure.

## enum Platform

```
type Platform* = int
const (
        PlatformPosix* = Platform(0)
        PlatformWindows*
        PlatformEmscripten*
        PlatformUnknown*
)
```

The platform the program is running on.

## fn getPlatform

```
fn getPlatform*(): Platform {
```

Returns the platform the program is running on.

## fn getCwd

```
fn getCwd*(): (str, Errno) {
```

Returns the current working directory.

## fn setEnv

```
fn setEnv*(key: str, value: str): Errno {
```

Sets the given environment variable to the given value. Returns 0 on
success, or an errno on failure.
