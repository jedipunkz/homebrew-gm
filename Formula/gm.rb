# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.0/gm_0.2.0_darwin_amd64.tar.gz"
      sha256 "e59dbac9d90f29c5ea7fd9a37a96b753c617a1c83bb24cbb4faa2ee0a3923be3"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.0/gm_0.2.0_darwin_arm64.tar.gz"
      sha256 "bc6ae6cbc896e78975db43f79530cb081aa81fc66563d37ce5092201d988aa73"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.0/gm_0.2.0_linux_amd64.tar.gz"
      sha256 "a18b8a1500de7827fb2f060f91e607f52c46d6993f60ef05f4a7742769962a14"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.2.0/gm_0.2.0_linux_arm64.tar.gz"
      sha256 "89310ad6f21976615f70155372866fd364c2adb336421872a43884b2a2fed52f"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
