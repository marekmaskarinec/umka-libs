# filepath

Filepath operation library.

## license

Unlicense/MIT

## Documentation

```
const (
	nil* = 0
	windows*
	unix*
)

var fileseparator*: char // platform specific file separator. linux => /, windows => \
var os*: int // current os
```

## fn init

```
fn init() {
```

Automatically initializes platform specific stuff


## fn dir

```
fn dir*(inp: str): str {
```

returns the directory in inp


## fn ext

```
fn ext*(inp: str): str {
```

returns the extension of file inp. if there is no extension, or it is a diroctory, output is ""


## fn fromslash

```
fn fromslash*(inp: str): str {
```

converts / to platform specific separator


## fn toslash

```
fn toslash*(inp: str) : str {
```

converts platform specific separator to /

