class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.39/lazdo_0.2.39_darwin_arm64.tar.gz"
      sha256 "f8095ad264e97daa4fd831a61b130109f06289e19f255e1ec4aa8bdbe667e57d"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.39/lazdo_0.2.39_darwin_x86_64.tar.gz"
      sha256 "86b357ffccfc50a5b038aea3273ab58b108c6be327ae98ddc52795d46b3355a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.39/lazdo_0.2.39_linux_arm64.tar.gz"
      sha256 "e5b1bb252cf55913c55234230c0be32243af36c9ede432c5095c9126a4c09744"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.39/lazdo_0.2.39_linux_x86_64.tar.gz"
      sha256 "4841e29d7e3bce8c5848c280ce3cd2678f642b7754ffdda79c9a8f01db923c7e"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
