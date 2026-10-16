class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.35/lazdo_0.2.35_darwin_arm64.tar.gz"
      sha256 "2d2940bd64f1c73f91085464324c1bdc9957f9cfed651dcff1b684f8690e8655"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.35/lazdo_0.2.35_darwin_x86_64.tar.gz"
      sha256 "34f5d15beaf0723c1fcc1e8d8faa0a1f8c0118ed3adaf57dca1cad535d66d4f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.35/lazdo_0.2.35_linux_arm64.tar.gz"
      sha256 "be4be3ce211a006055c1dcf6c71f5f8e61410645d8c09e2205362166169eb381"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.35/lazdo_0.2.35_linux_x86_64.tar.gz"
      sha256 "156df5626f3f1ddcbb8437174aab74795492921dd74ceeca4a3df006ae226537"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
