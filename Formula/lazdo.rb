class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.24/lazdo_0.2.24_darwin_arm64.tar.gz"
      sha256 "d945a592d68f141580563931a0edeb5f23baf32a653d6338b3f09161d7b96b39"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.24/lazdo_0.2.24_darwin_x86_64.tar.gz"
      sha256 "b061ad9879e76d1b70df556149a8413c6ef3b4c0987d89d0e9d3fd0720563934"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.24/lazdo_0.2.24_linux_arm64.tar.gz"
      sha256 "21884110ddd68eed5a1c00d946399403d94b03a74c34bd3c1c71cc7bb7b14a70"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.24/lazdo_0.2.24_linux_x86_64.tar.gz"
      sha256 "85ca28d5ff11d4d8ea3c2b9426b4e23d71140184e8bfd8856861222059994781"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
