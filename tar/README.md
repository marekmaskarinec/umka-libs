# tar.um

A tar archive library for Umka. Install using
[UmBox](https://umbox.tophat2d.dev/package/tar).

## Example

```
import (
    "std.um"
    mtar = "umbox/tar/tar.um"
)

fn main() {  
    tar, err := mtar.open("test.tar", "wb")
    std.exitif(err)
    
    tar.addFile("box.json")
    tar.addFile("umbox/tar/README.md")
    tar.addFile("umbox/tar/tar_linux.umi")
    
    err = tar.finalize()
    std.exitif(err)
    
    err = tar.close()
    std.exitif(err)
    
    tar, err = mtar.open("test.tar", "rb")
    std.exitif(err)
    
    files, err := tar.getFiles()
    std.exitif(err)
    
    printf("Files in tar file:\n")
    for i in files {
        printf("  %s\n", files[i].name)
    }
    
    testName := "box.json"
    printf("Reading " + testName + ":\n")
    umboxJson, err := tar.read(testName)
    std.exitif(err)

    printf("%s\n", str([]char(umboxJson)))
        
    err = tar.extract("extracted")
    std.exitif(err)
    
    err = tar.close()
    std.exitif(err)
}
```

## License

Unlicense/MIT
