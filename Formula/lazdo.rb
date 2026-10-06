class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.9/lazdo_0.2.9_darwin_arm64.tar.gz"
      sha256 "7529950323e03bde42ef67255e61dafa6fa34e4d2e2167cb27186e8ad8740f33"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.9/lazdo_0.2.9_darwin_x86_64.tar.gz"
      sha256 "7ecfd13229f79ea2b0ead3e728918bb9303c5b3255e1491d6ec9cee4bcc19712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.9/lazdo_0.2.9_linux_arm64.tar.gz"
      sha256 "66016f2ab850de41d14d5be50b4c3945fcf94c81af9d33f99e8662116d8021ca"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.9/lazdo_0.2.9_linux_x86_64.tar.gz"
      sha256 "baad5d6652b7eb81263e70ee72dd54babc1360b6e506046a9c43e858b8a0caed"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
