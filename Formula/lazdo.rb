class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.27/lazdo_0.2.27_darwin_arm64.tar.gz"
      sha256 "d94f13d1c09010261b26be02406a9e99e2108bef0683208b63dfca75641099af"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.27/lazdo_0.2.27_darwin_x86_64.tar.gz"
      sha256 "d130d4ee5b7d23026fe751ed31691c69b5be6aa1e9dd9d9077ba115e6f14dabd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.27/lazdo_0.2.27_linux_arm64.tar.gz"
      sha256 "54479325b656b1d042ddbc2232000e976dc9453609f118025d1749794c289141"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.27/lazdo_0.2.27_linux_x86_64.tar.gz"
      sha256 "4af8f6dc64056941203754830d6155a08f9c443437f5752564e356b82eac93f1"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
