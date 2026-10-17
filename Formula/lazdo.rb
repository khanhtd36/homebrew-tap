class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.36/lazdo_0.2.36_darwin_arm64.tar.gz"
      sha256 "9249f3a9b3ec12f2de344d91a2c6e49f64aa741f6de235a8135d2633c698a484"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.36/lazdo_0.2.36_darwin_x86_64.tar.gz"
      sha256 "dd5d83c270e9ff77036335e81125571ca9d74ab4a1b708e6d37f4c1a8471c712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.36/lazdo_0.2.36_linux_arm64.tar.gz"
      sha256 "e0b4418968e9bd123517e55541215aa04b20dc56d36b4110e4da4a3675d9dd9e"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.36/lazdo_0.2.36_linux_x86_64.tar.gz"
      sha256 "9fc38cfb39adaf9d9ed700631f6337328b2648e7498eb27913fb06b1d5787e32"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
