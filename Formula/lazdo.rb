class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.19/lazdo_0.2.19_darwin_arm64.tar.gz"
      sha256 "edf245a30be15a87223e01b8b1d74d5dce980d8704938d26ecafd0b88bcf48c5"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.19/lazdo_0.2.19_darwin_x86_64.tar.gz"
      sha256 "8b6322e58a2e0be5313319c5de69b6d3ae878537291b868c492595e635443a22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.19/lazdo_0.2.19_linux_arm64.tar.gz"
      sha256 "b77a3ed3773a73637bf52d84f0517ef272aacfb5865da3b1f91b1b5c4991d01a"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.19/lazdo_0.2.19_linux_x86_64.tar.gz"
      sha256 "c18fd88404313183764ebd3129119b65d4f703e6e826732ffb2ade10e4f889c5"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
