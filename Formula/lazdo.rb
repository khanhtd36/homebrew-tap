class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.14/lazdo_0.2.14_darwin_arm64.tar.gz"
      sha256 "9ed6298a88d7050c2c732ba4977351a210444bff7bd8625724270281fee428fa"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.14/lazdo_0.2.14_darwin_x86_64.tar.gz"
      sha256 "4d930b820365daf0083825b6f10b89ab6399480c604ef8b6b8d6414ea213cff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.14/lazdo_0.2.14_linux_arm64.tar.gz"
      sha256 "03e6c3b7e46d8ad8fa9aabc464ebba0c23b4711377f6b7ef2c43959290907aeb"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.14/lazdo_0.2.14_linux_x86_64.tar.gz"
      sha256 "873789fbd17462f382b1b79849703fc1bf1dc93a021e3a34a2117860287f708a"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
