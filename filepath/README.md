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

## fn dir

```
fn dir*(inp: str): str {
```

returns the directory in inp


## fn file

```
fn file*(inp: str): str {
```

returns the file in inp


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


## fn join

```
fn join*(inp: ..str): str {
```

joins the strings in inp with platform specific separator


## fn split

```
fn split*(path: str): []str {
```

Splits inp with platform specific separator or /
