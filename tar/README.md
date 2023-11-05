# tar.um

A tar archive library for Umka. Install using
[PAK](https://pak.tophat2d.dev/package/tar).

## Example

```
import (
        "pak/tar/tar.um"
)

fn main() {
    var err: Errno
    var t: tar.Tar
        
    t, err = tar.open("test.tar", "w")
    if err != 0 {
        printf("Error opening tar file: %s\n", tar.strerror(err))
        return
    }
    
    t.addFile("pak.json")
    t.addFile("microtar/README.md")
    t.addFile("tar_linux.umi")
    
    err = t.finalize()
    if err != 0 {
        printf("Error finalizing tar file: %s\n", tar.strerror(err))
        return
    }
    
    err = t.close()
    if err != 0 {
        printf("Error closing tar file: %s\n", tar.strerror(err))
        return
    }
    
    t, err = tar.open("test.tar", "r")
    if err != 0 {
        printf("Error opening tar file: %s\n", tar.strerror(err))
        return
    }
        
    err = t.extract("extracted")
    if err != 0 {
        printf("Error extracting tar file: %s\n", tar.strerror(err))
        return
    }
    
    err = t.close()
    if err != 0 {
        printf("Error closing tar file: %s\n", tar.strerror(err))
        return
    }
}
```

## License

Unlicense/MIT
