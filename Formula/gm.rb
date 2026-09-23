# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.1/gm_0.1.1_darwin_amd64.tar.gz"
      sha256 "1a72a9b243645ed6abb12752a258c57386e6caa52d5df3c68fa3777f66f9aab1"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.1/gm_0.1.1_darwin_arm64.tar.gz"
      sha256 "f52f13e1fa29d04d93db102bdc955eee9fd305018f01f639032f7404bb5721d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.1/gm_0.1.1_linux_amd64.tar.gz"
      sha256 "af69fdcb84ec77356bd21ee9d96d0a708a1132729931cffa80305ca4efd6249b"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.1/gm_0.1.1_linux_arm64.tar.gz"
      sha256 "0685870600b78e8e78c6a8ad9347cc1f986948f20b8a8c59f3850f7cf7cdd3a7"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
