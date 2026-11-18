class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.44/lazdo_0.2.44_darwin_arm64.tar.gz"
      sha256 "edc420c9f942a91e34d3bec4ca3bf7aa421626c41aa6236cc2ce1d465c18f903"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.44/lazdo_0.2.44_darwin_x86_64.tar.gz"
      sha256 "2656231b9225bb7012d0996d0cbff32ce34cd192e3171c6d3dfa126fcd4f20b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.44/lazdo_0.2.44_linux_arm64.tar.gz"
      sha256 "afe0eb054cfe8df9758bf8dc65d9af5153d40cf842605a68de2daff68d9267de"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.44/lazdo_0.2.44_linux_x86_64.tar.gz"
      sha256 "e946a41b4a73472cc98ef56e9d673b468e68d796a61defb7026f4f0df8793c61"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
