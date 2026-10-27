class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.41/lazdo_0.2.41_darwin_arm64.tar.gz"
      sha256 "dfcc44f4f3140c086c294ecaf3fbae8608c923cc4422c36d6229e7f4ad0629fc"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.41/lazdo_0.2.41_darwin_x86_64.tar.gz"
      sha256 "93eb48977a1fa0de73ee7f6348cef8c2f462f0ccbd942940d030aa576d96424d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.41/lazdo_0.2.41_linux_arm64.tar.gz"
      sha256 "aede3bcc56940ce951d21e9fc09d58b585dcbfded51893002af1a1b616e4dd8c"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.41/lazdo_0.2.41_linux_x86_64.tar.gz"
      sha256 "5bc85947d4df789ef4083562cb4756f99f579ecc34da4defa4e8f97a1b8c30ed"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
