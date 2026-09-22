#!/usr/bin/env bash
# render-formula.sh <version> <checksums.txt> — writes the formula on stdout.
#
# The version is the tag without its leading v, and the checksums file is the
# one attached to that release. Everything else about the formula lives here.
set -euo pipefail

version=${1:?usage: render-formula.sh <version> <checksums.txt>}
sums=${2:?usage: render-formula.sh <version> <checksums.txt>}

# sha <os> <arch> — the checksum of one archive, or nothing if it is missing.
sha() {
  local name="gm_${version}_$1_$2.tar.gz"
  awk -v want="$name" '$2 == want { print $1 }' "$sums"
}

url() {
  echo "https://github.com/jedipunkz/gm/releases/download/v${version}/gm_${version}_$1_$2.tar.gz"
}

for platform in darwin_amd64 darwin_arm64 linux_amd64 linux_arm64; do
  os=${platform%_*} arch=${platform#*_}
  if [ -z "$(sha "$os" "$arch")" ]; then
    echo "no checksum for gm_${version}_${platform}.tar.gz in $sums" >&2
    exit 1
  fi
done

cat <<RUBY
# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "${version}"
  license "MIT"

  on_macos do
    on_intel do
      url "$(url darwin amd64)"
      sha256 "$(sha darwin amd64)"
    end
    on_arm do
      url "$(url darwin arm64)"
      sha256 "$(sha darwin arm64)"
    end
  end

  on_linux do
    on_intel do
      url "$(url linux amd64)"
      sha256 "$(sha linux amd64)"
    end
    on_arm do
      url "$(url linux arm64)"
      sha256 "$(sha linux arm64)"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
RUBY
