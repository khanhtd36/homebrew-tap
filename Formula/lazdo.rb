class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.6/lazdo_0.2.6_darwin_arm64.tar.gz"
      sha256 "530dd9401e4adf3a0d056cdf226286bd7855a59a32c8bbb169ab6221b5409323"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.6/lazdo_0.2.6_darwin_x86_64.tar.gz"
      sha256 "a6d31892256b541100b94c07cd192a6d8e6b402c12c14e2548cbf8edd6678856"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.6/lazdo_0.2.6_linux_arm64.tar.gz"
      sha256 "79c0c5f75973f58efb902bdc9676e56fb0f4066d367b27583e112e6df1d99df6"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.6/lazdo_0.2.6_linux_x86_64.tar.gz"
      sha256 "e1533d13f207c72adbd47bfb4024a28531cf3ec125b9877604900d5136a3d6c1"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
