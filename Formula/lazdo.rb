class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.10/lazdo_0.2.10_darwin_arm64.tar.gz"
      sha256 "e524ade2107997af8137b89bd8b7a16b3ce3f7dd6d3d6008cf687f09b5a869f3"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.10/lazdo_0.2.10_darwin_x86_64.tar.gz"
      sha256 "6d4242d0602a2410914090dd644ac5aa2f1196f1aa38ba89b11bb99800268233"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.10/lazdo_0.2.10_linux_arm64.tar.gz"
      sha256 "11fac4730bec330a4806ca846c7f1bf1621ae778275d2a6761038275dfa55746"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.10/lazdo_0.2.10_linux_x86_64.tar.gz"
      sha256 "267045f80b7aa5075b9ac50513a5aa0739c7e2e69985d454eefa1b9c3176714d"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
