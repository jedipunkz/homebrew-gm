# homebrew-gm

Homebrew tap for [gm](https://github.com/jedipunkz/gm), a ghq-style repository
manager with a built-in fuzzy finder.

```sh
brew install jedipunkz/gm/gm
```

macOS and Linux, Intel and ARM. The formula installs a prebuilt binary, so Go
is not needed to install it.

To update:

```sh
brew update && brew upgrade gm
```

## What is in here

`Formula/gm.rb` — written by `.github/workflows/formula.yaml`, which follows
[gm](https://github.com/jedipunkz/gm)'s releases and points the formula at the
binaries attached to the newest one. Nothing here is edited by hand.

It runs hourly, and on demand from Actions → Update formula → Run workflow if
you would rather not wait. It uses this repository's own token: releasing gm
needs no credential that reaches in here.
