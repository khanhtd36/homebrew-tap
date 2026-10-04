class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.1.0/lazdo_0.1.0_darwin_arm64.tar.gz"
      sha256 "fe75fa92a0c326ff8e6614ddaa5a0e7a8718510339405c9d0327b270d78405f3"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.1.0/lazdo_0.1.0_darwin_x86_64.tar.gz"
      sha256 "b7d6698bdb4f3a03cdd22b12be624c4dbfbadccc15a343dd2829178ba2e1319b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.1.0/lazdo_0.1.0_linux_arm64.tar.gz"
      sha256 "780d3356795754a1cc2cde381b1d061d8b6440b6de3ed6acdf6d91d1984f8611"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.1.0/lazdo_0.1.0_linux_x86_64.tar.gz"
      sha256 "d262c627915946d603d3b912da5f6968de5cc12fe482541f71b5ae7d2b17a012"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
