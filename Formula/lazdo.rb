class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.43/lazdo_0.2.43_darwin_arm64.tar.gz"
      sha256 "80921485f12daffdf48cc17d1690730a61763dbfa33af54e6c3b85006a3f1511"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.43/lazdo_0.2.43_darwin_x86_64.tar.gz"
      sha256 "60d12474faee351c06975a99a1ec1e5ca592a6de388f0cb422b26cd12c6644ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.43/lazdo_0.2.43_linux_arm64.tar.gz"
      sha256 "dab75cb5adb35c6c9a662b9bf47a35bf5ce9a5cb97cc03195bdd1cc7362e84b2"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.43/lazdo_0.2.43_linux_x86_64.tar.gz"
      sha256 "52585d6ccf9590a3bc537a382d35c006fbd27bce89096daaa625408eb18471ee"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
