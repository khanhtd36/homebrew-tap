class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.20/lazdo_0.2.20_darwin_arm64.tar.gz"
      sha256 "a2d1279009d1199b931cf2d9b1ef68e36fd7dfa851c298a237dbe71903ef9ec2"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.20/lazdo_0.2.20_darwin_x86_64.tar.gz"
      sha256 "a744b291c1e50bd37ab4f0dff1cc589d53ccc4a95999cc2f734e2381ee61d14d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.20/lazdo_0.2.20_linux_arm64.tar.gz"
      sha256 "0dc8e3c24a4ea7006362f27eca58b38807932778dab9620502f4e4d31c619470"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.20/lazdo_0.2.20_linux_x86_64.tar.gz"
      sha256 "1fe6eb5b4bdf47dcfd109420617529d2c353cc41aa53c33349516d3e53ea5747"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
