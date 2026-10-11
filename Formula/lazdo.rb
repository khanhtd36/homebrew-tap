class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.26/lazdo_0.2.26_darwin_arm64.tar.gz"
      sha256 "6e347e012b821de9878df9af0a0f2f202ad2db9dbf55fbdc8251de4d596649b0"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.26/lazdo_0.2.26_darwin_x86_64.tar.gz"
      sha256 "823c6896cd323a7e0cf91ce3b42db536821c7020674e3e835889cda79c15e46b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.26/lazdo_0.2.26_linux_arm64.tar.gz"
      sha256 "92f88ad7486abc8bf59ce114e65b02458029cfb1f7358c9bb6907e55f22ba540"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.26/lazdo_0.2.26_linux_x86_64.tar.gz"
      sha256 "83d795334ca5b7ddc80db09aeb091ccc0f459bed466cf0781b98239f66923141"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
