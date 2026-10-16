class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.34/lazdo_0.2.34_darwin_arm64.tar.gz"
      sha256 "d90c8c2aba32574cbb8e9432a9448a4b7f0861c0e7e931e5e433190cedfe2f75"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.34/lazdo_0.2.34_darwin_x86_64.tar.gz"
      sha256 "663b4fdac72b84c4f69b764c49447b1bc23543751cb4707eb9230292a95c85a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.34/lazdo_0.2.34_linux_arm64.tar.gz"
      sha256 "664bcf6a7741f3d14b10fe72ce83582520a545f4fb98810c829784e45ae2959c"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.34/lazdo_0.2.34_linux_x86_64.tar.gz"
      sha256 "d4d22754a86536212e9486a667e3d3a7f6e95d84d34b782a3f13912117505c97"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
