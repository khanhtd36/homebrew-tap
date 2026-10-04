class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.1/lazdo_0.2.1_darwin_arm64.tar.gz"
      sha256 "2d8c96e80fd05f534b5ce611f1ce6f98df7f4b638ef4dff29c0fd6cd3188af36"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.1/lazdo_0.2.1_darwin_x86_64.tar.gz"
      sha256 "a478b0bc8033dc71015f894c9a6c1ea5185697550a7a302db5f186bbe1b1ff0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.1/lazdo_0.2.1_linux_arm64.tar.gz"
      sha256 "a3ca742e4e701056f6478454f0904f9b26a753c76436a00e7293de3a1916aff7"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.1/lazdo_0.2.1_linux_x86_64.tar.gz"
      sha256 "650679317c243653f39936da8b5e7f1a46a41661d080ddfac5d9aa2fe18a0767"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
