# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.4/gm_0.2.4_darwin_amd64.tar.gz"
      sha256 "e01930218182a03f06227460c06c1fa6a9a17ddcef982b1cc9ad7bbe17bb03ab"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.4/gm_0.2.4_darwin_arm64.tar.gz"
      sha256 "323b6c44754f3153cab127ec526090e02aaf13d0d5a8850c287fd9c73194f9dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.4/gm_0.2.4_linux_amd64.tar.gz"
      sha256 "5041f02b37a19535d1acb5e65be53d7379d92e5618906b8279227a288fa038c1"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.4/gm_0.2.4_linux_arm64.tar.gz"
      sha256 "d8c1deeb2975a502e208b6e03b46339f41edff4791519d4cc4eeac482b6074e7"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
