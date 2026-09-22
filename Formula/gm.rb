# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.0/gm_0.1.0_darwin_amd64.tar.gz"
      sha256 "6ea9d6f575f9bd0f6454bf42d78e914d79e919fcf225bbb68748878af3e724c8"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.0/gm_0.1.0_darwin_arm64.tar.gz"
      sha256 "64957a438931ad566ee093caf274b249cb40e1ad04e89d60720902c1bd062709"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.0/gm_0.1.0_linux_amd64.tar.gz"
      sha256 "6731c4fb9c302c50dc5e92096a0fb326fe911ec5a5bafae3ab96a1e8f5330c18"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.0/gm_0.1.0_linux_arm64.tar.gz"
      sha256 "ea285b9eddec3786660aec291ee2e37ef0782791be3e9d45c86fe22512ef94d1"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
