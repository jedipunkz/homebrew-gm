# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.6/gm_0.2.6_darwin_amd64.tar.gz"
      sha256 "70d9ad53addc6576d067699ce940b0a61c9bbbcee43c233ea067e7ca15af82ff"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.6/gm_0.2.6_darwin_arm64.tar.gz"
      sha256 "40c72651f9e1143878fc20f608e14a61f4ec06b724e8d7af799cec82a02dcb4a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.6/gm_0.2.6_linux_amd64.tar.gz"
      sha256 "e29a0490f1867dba471d71c663b8d80c98ef83c1dd299aecc83121e6d24aef0b"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.6/gm_0.2.6_linux_arm64.tar.gz"
      sha256 "42f1929992c55ecd7e24a216c8597336085618fb9094b462d7593ea373d5cbd8"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
