class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.32/lazdo_0.2.32_darwin_arm64.tar.gz"
      sha256 "1ba6b30b23298051f154f1e39ff20b0cf663d3bf88262b65d4d127e31b377e9e"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.32/lazdo_0.2.32_darwin_x86_64.tar.gz"
      sha256 "182accb757593cdb45dca0709d02f9f190f0fbd48598cd809938ece1a2742e4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.32/lazdo_0.2.32_linux_arm64.tar.gz"
      sha256 "18546fe64bd29c0cb957c4c38edd2445b1217f92ead8f34d7b43beeae13a746a"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.32/lazdo_0.2.32_linux_x86_64.tar.gz"
      sha256 "6bd50ef9404583fd88cfe7edb865ac4e2a52fa121dbed158907cb4b382f851bc"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
