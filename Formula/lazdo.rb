class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.8/lazdo_0.2.8_darwin_arm64.tar.gz"
      sha256 "58e2bf00d0b8550445dd2a98dc86aee7ac557854817119e5db083a9962144d60"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.8/lazdo_0.2.8_darwin_x86_64.tar.gz"
      sha256 "7015f4290d0955419062bc4995a14c5334a530fcdee5b0d56fc46339bbdc75f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.8/lazdo_0.2.8_linux_arm64.tar.gz"
      sha256 "3b605a3760228852642e608d16bae8dff53e432401fd466838dc0ecce45457ae"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.8/lazdo_0.2.8_linux_x86_64.tar.gz"
      sha256 "5ab86abbc3277d92edd1b37677d7bec1ad07d4dfac49fa3c8669a84116f52776"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
