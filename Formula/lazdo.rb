class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.11/lazdo_0.2.11_darwin_arm64.tar.gz"
      sha256 "424871c34a68d4e491ba2420920e8629c02364e1436dea3d596313feabc9ddc8"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.11/lazdo_0.2.11_darwin_x86_64.tar.gz"
      sha256 "085c1df4f9606b0e2d1ddf9228b0e56b41211a1ee85734ebea9b209757d0874c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.11/lazdo_0.2.11_linux_arm64.tar.gz"
      sha256 "055b70375d69e254a91d131ec2e84490e128afc4e73004f5f710c43dd79d869e"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.11/lazdo_0.2.11_linux_x86_64.tar.gz"
      sha256 "bdc0fde6224c0179cfc7d25cee89d07dd4cf57acb156def11fcfd66dbfc64a49"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
