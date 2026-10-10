class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.18/lazdo_0.2.18_darwin_arm64.tar.gz"
      sha256 "b0e3d0212821ea7ef09714ad8ed42534d0a2c5f2960d6769eeed9fcc77c6c17a"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.18/lazdo_0.2.18_darwin_x86_64.tar.gz"
      sha256 "b7a96f062821ad1905db717942a0624084870b3e7b8cdd7ea10f242ca8c7ab10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.18/lazdo_0.2.18_linux_arm64.tar.gz"
      sha256 "089fdc19af37e38c79a19adc0e49a665cc212266ef4b8875d4260031cef0fd22"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.18/lazdo_0.2.18_linux_x86_64.tar.gz"
      sha256 "45ff890726795dae500603b4f8defd3c1387656a72df1205f4f85e994808287e"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
