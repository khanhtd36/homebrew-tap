class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.29/lazdo_0.2.29_darwin_arm64.tar.gz"
      sha256 "0adccf6798f0e9becb8793d9e8525d105b8787c6ff8388f89fbbf3e714a2c5ea"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.29/lazdo_0.2.29_darwin_x86_64.tar.gz"
      sha256 "32976f3a1cbd50babff2e0bbf7736d53db72e3d141f7b38c07e5713ee6f1ae8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.29/lazdo_0.2.29_linux_arm64.tar.gz"
      sha256 "3f7a237f2524b4ebabae88747dd8032b2872c11127daaec0799bdc204222ad28"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.29/lazdo_0.2.29_linux_x86_64.tar.gz"
      sha256 "8f184e73e15cc83649cbdf4817eb4198371d2c8819d1f672554525ed2dded3d0"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
