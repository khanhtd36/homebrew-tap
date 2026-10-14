class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.31/lazdo_0.2.31_darwin_arm64.tar.gz"
      sha256 "1143c72c4b0140b9ace6b9c6f3054d1278174a546d8a04c52dd46cc033654a9c"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.31/lazdo_0.2.31_darwin_x86_64.tar.gz"
      sha256 "cc51f3a3cbd281dc684d63f80971ab6d48ad973f5bad749b02541c77b08bf21e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.31/lazdo_0.2.31_linux_arm64.tar.gz"
      sha256 "92646c0fca3beec61950f3c19c3802a98fd0cb8db5e10b249fab5fd46715d271"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.31/lazdo_0.2.31_linux_x86_64.tar.gz"
      sha256 "a69222c95c801ea3d3194df9913a8c375652806c104347be8adeaa265641d983"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
