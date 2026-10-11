class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.21/lazdo_0.2.21_darwin_arm64.tar.gz"
      sha256 "2d185f9c341a3ae65c65488728135614c30eb78531b545054c37121d03331878"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.21/lazdo_0.2.21_darwin_x86_64.tar.gz"
      sha256 "888c4043a2a215ab87b6ac62b908b6532def4fd1c6aaa179e3e7ac593543ce54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.21/lazdo_0.2.21_linux_arm64.tar.gz"
      sha256 "d779bc6d3afd62f59c1c638cd8dbeafe8e584315ae0b3c5190c8768d83f0507c"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.21/lazdo_0.2.21_linux_x86_64.tar.gz"
      sha256 "9a63a74b627f2dad81f37d6a2c6defccc585f1c6bbb6f182f36b3843a21d394b"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
