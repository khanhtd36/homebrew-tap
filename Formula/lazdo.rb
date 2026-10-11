class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.22/lazdo_0.2.22_darwin_arm64.tar.gz"
      sha256 "3393c20b3646353ab08e9c3beb93f88a4476477075a3945459fd9fb822658ddf"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.22/lazdo_0.2.22_darwin_x86_64.tar.gz"
      sha256 "df7927db025f3d810fc0d3519d66b46c6836e7cea5bcc23f8c8aa39971e86f22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.22/lazdo_0.2.22_linux_arm64.tar.gz"
      sha256 "68481cc74c218075937afc8a3a9a5f936a5f366b63033e47ae71622437fd0e72"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.22/lazdo_0.2.22_linux_x86_64.tar.gz"
      sha256 "6a806d7350310abf1ca5f62656eb6f3611597f594c9eaf4cef78d3e834bafbfe"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
