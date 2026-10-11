class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.25/lazdo_0.2.25_darwin_arm64.tar.gz"
      sha256 "b540e66a12de2a6cc088cde47f34f8d4622cd4f6796b13a9be75b82603828896"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.25/lazdo_0.2.25_darwin_x86_64.tar.gz"
      sha256 "4dc20757ab30b5a5d48fd4ef28ec14c2f23c672da8bb68ff547a7cb2878bfd66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.25/lazdo_0.2.25_linux_arm64.tar.gz"
      sha256 "c5695f4841151a96a62c611b3d075c29787284325110f73739380f8cc8ae8ed9"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.25/lazdo_0.2.25_linux_x86_64.tar.gz"
      sha256 "d76497787cf0658bb43507ea6bb927f1c6b3edfdab7f425757a62d3e17628793"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
