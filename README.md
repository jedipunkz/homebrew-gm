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

`Formula/gm.rb` — written by [GoReleaser](https://goreleaser.com) when a
version is tagged in the [gm](https://github.com/jedipunkz/gm) repository, and
pointing at the binaries attached to that release. Nothing here is edited by
hand.
