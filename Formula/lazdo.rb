class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.45/lazdo_0.2.45_darwin_arm64.tar.gz"
      sha256 "1a7b149bf98ace3e29aae0e68b15f30497e7e3610014b76f11ba86a619e552d3"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.45/lazdo_0.2.45_darwin_x86_64.tar.gz"
      sha256 "67772d53f28f92e2f4e37a52cd746dcf2cae30a861e7f81586ef5bcd9a31843d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.45/lazdo_0.2.45_linux_arm64.tar.gz"
      sha256 "360a9118b211050874652ce9c7a7f2f1226cedfec22ff7aae6add0ab0691337b"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.45/lazdo_0.2.45_linux_x86_64.tar.gz"
      sha256 "e6771af16d5b5686d082e9f03bf8466105791d0862842cefd007007f6b8b893a"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
