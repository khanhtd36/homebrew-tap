class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.12/lazdo_0.2.12_darwin_arm64.tar.gz"
      sha256 "719e9d20f0316cd4ad7d4e86120d66b29e0b3e706829224cdd1ef79868778bbe"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.12/lazdo_0.2.12_darwin_x86_64.tar.gz"
      sha256 "94723dd6c59e36a3282737c0fe08fd1ef7551f7320b48fade16a6dc2880bc0d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.12/lazdo_0.2.12_linux_arm64.tar.gz"
      sha256 "4b3053980b6d9b84eb61c07dfb568e08bd93e11d8c20900fbf8280192a35dd15"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.12/lazdo_0.2.12_linux_x86_64.tar.gz"
      sha256 "c7cf10fd0006a92981f317ac10000296adfac7db0617531ea59cb249123cb1fe"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
