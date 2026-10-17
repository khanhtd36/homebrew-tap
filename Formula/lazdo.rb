class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.38/lazdo_0.2.38_darwin_arm64.tar.gz"
      sha256 "224f77e56cb1df209201382174a4f3de0ecceed5bafcc43d396d458092b3ff51"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.38/lazdo_0.2.38_darwin_x86_64.tar.gz"
      sha256 "c8ee9faa0b970e37161da5137b78dc5cd1531a073df66610d86e1f40699020d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.38/lazdo_0.2.38_linux_arm64.tar.gz"
      sha256 "dd6fd44d16635adf51ff29e67b9bf75b78cb3348c28282e281e4f80e5a8aaaa1"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.38/lazdo_0.2.38_linux_x86_64.tar.gz"
      sha256 "f6ce80c1affadb113ce7ff4c103cb1978b6db526829769a328c5617cb39cb79d"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
