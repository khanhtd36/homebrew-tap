class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.15/lazdo_0.2.15_darwin_arm64.tar.gz"
      sha256 "a02e69f6a35cd0cd16b6d6b8ca3e69de132d086137f53c59d31f6b5214b47ba2"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.15/lazdo_0.2.15_darwin_x86_64.tar.gz"
      sha256 "131b6d95a572442520a8349dc2316e23205f51948bb6a77185d4c08a3167eb2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.15/lazdo_0.2.15_linux_arm64.tar.gz"
      sha256 "1f0d620343cbd03f8166b654d633586755571c98bb176c5e0a5e444033b9821c"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.15/lazdo_0.2.15_linux_x86_64.tar.gz"
      sha256 "7a6385a17c3a81586555f86dd04cc65c5d5923c3cc0c0eba15ebdc8a0d5e929a"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
