# typed: false
# frozen_string_literal: true

# Written by .github/workflows/formula.yaml from the latest gm release.
# DO NOT EDIT.
class Gm < Formula
  desc "ghq-style repository manager with a built-in fuzzy finder"
  homepage "https://github.com/jedipunkz/gm"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.3/gm_0.1.3_darwin_amd64.tar.gz"
      sha256 "72fb63d1c13fcbe40f751039077e9b597c9b57e2a44adf5cc926127bcc0ac54f"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.3/gm_0.1.3_darwin_arm64.tar.gz"
      sha256 "1710820a3a27a10571c28545d7fc9f42e139b28bb175143101bf9c9761a09df0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.3/gm_0.1.3_linux_amd64.tar.gz"
      sha256 "720f6d9268138dc45aead9a3734d9c8b74b077f7cacb1ad980e769576ddfd5c7"
    end
    on_arm do
      url "https://github.com/jedipunkz/gm/releases/download/v0.1.3/gm_0.1.3_linux_arm64.tar.gz"
      sha256 "f80a819f880d756671bea2bbd0c5ff568f76539541b106a5f18145aa79079391"
    end
  end

  def install
    bin.install "gm"
  end

  test do
    assert_match "gm", shell_output("#{bin}/gm version")
  end
end
