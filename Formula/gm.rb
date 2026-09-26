# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.2/gm_0.2.2_darwin_amd64.tar.gz"
      sha256 "79c480da18e8d12836bd9cb5469c5d2b1fab830292ec30065c9d37608ff0e4b0"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.2/gm_0.2.2_darwin_arm64.tar.gz"
      sha256 "fc169d7065657f5477950d4fbb273b8eed1dcd946cdf1569cd0b877947550502"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.2/gm_0.2.2_linux_amd64.tar.gz"
      sha256 "a769d18175ac99c11acd8bd0b88b1537144d9e1f75bfd51f3d5714e64c8d14b5"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.2/gm_0.2.2_linux_arm64.tar.gz"
      sha256 "2581783f9184e4bae3edf82926fcf3e572d80a337adea615cd3ea7c967487225"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
