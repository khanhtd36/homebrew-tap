class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.5/lazdo_0.2.5_darwin_arm64.tar.gz"
      sha256 "7450853ec2763b0d88ba7d2d498661164c50e3516cb244a96b271b0f65e951ba"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.5/lazdo_0.2.5_darwin_x86_64.tar.gz"
      sha256 "0a524123f78a579e154adfd0ca850e57fbbfd6a4b8317169ec93d443efc46d94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.5/lazdo_0.2.5_linux_arm64.tar.gz"
      sha256 "b04d84ec9175f988684918a20282685a6f17c37f8bbbff04e825355482b56699"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.5/lazdo_0.2.5_linux_x86_64.tar.gz"
      sha256 "ba880d15e1a6adc53c281397ff9f7349ac59c4d899712c205aa92db1067178ec"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
