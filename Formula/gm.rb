# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.3/gm_0.2.3_darwin_amd64.tar.gz"
      sha256 "76662508945a0b39b754c6aff2c5290e42bd61cedd75681f66e593bc007a6621"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.3/gm_0.2.3_darwin_arm64.tar.gz"
      sha256 "808aab47503a2ffc899809fdafacca6da5bcb34c17d02fe5c91750178b9d67f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.3/gm_0.2.3_linux_amd64.tar.gz"
      sha256 "2726f05632cb0b5c1e2b6763d60f9b1d17060049e654722c34aa72ae5e9e84df"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.3/gm_0.2.3_linux_arm64.tar.gz"
      sha256 "47b099ec1993819755aeeab141ad4459239a450c72c386f8dd3917e813486c01"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
