class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.7/lazdo_0.2.7_darwin_arm64.tar.gz"
      sha256 "8e0fc79ae44108ca5f33f67adf93db92665e5423059f0c767f3abca7876777e2"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.7/lazdo_0.2.7_darwin_x86_64.tar.gz"
      sha256 "7fc8a4bba64c65dc5173461a60b2891bd5ce160f6b1a52bb9a9d8f79c6b91e46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.7/lazdo_0.2.7_linux_arm64.tar.gz"
      sha256 "58e4cf056fda66f3f35c7c8855f7ab27da718e4c5bc270aa69fc377a129eccfc"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.7/lazdo_0.2.7_linux_x86_64.tar.gz"
      sha256 "4564855a9039a8a4e53049b46d068f130159de5ec9d4f6292a832aa19ee2f170"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
