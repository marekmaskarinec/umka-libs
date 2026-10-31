# umka-libs

A collection of [Umka](https://github.com/vtereshkov/umka-lang) libraries.
Every top-level folder is a standalone [UmBox](https://umbox.tophat2d.dev)
package with its own `box.json`, README and version.

| Package | Description |
|---|---|
| [csv](csv) | CSV parser and encoder |
| [filepath](filepath) | Filepath operation library |
| [fmt](fmt) | Alternative formatting function |
| [http](http) | HTTP client library |
| [json](json) | JSON decoder library |
| [jsonenc](jsonenc) | JSON encoder library |
| [logs](logs) | Logging library |
| [os](os) | OS operation library |
| [strings](strings) | String manipulation library |
| [tar](tar) | A tar library |

## Usage

Install a package into your UmBox project:

```
umbox install <package>
```

## Development

Clone with submodules (`tar` uses [microtar](https://github.com/rxi/microtar)):

```
git clone --recurse-submodules https://github.com/marekmaskarinec/umka-libs
```

Build a package the same way CI does:

```
cd <package>
umbox update
umbox build
```

## Publishing

`.github/workflows/umbox.yml` builds and uploads to UmBox every package whose
folder changed in a push to `main`. To publish manually, run the workflow
from the Actions tab with a list of package names, or `all`.

Each package uploads with its own secret, `UMBOX_<PACKAGE>` (e.g. `UMBOX_OS`).

Bump `version` in a package's `box.json` when publishing a new release.

## History

These packages used to be separate repositories on sr.ht (`~mrms/<name>um`).
Their history is preserved here, so `git log -- <package>/` works.
