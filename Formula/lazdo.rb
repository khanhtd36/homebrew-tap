class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.16/lazdo_0.2.16_darwin_arm64.tar.gz"
      sha256 "e28559e6ed990109dee6960a34ed6fd2552bd8d4890291465e7ad198f9e6901a"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.16/lazdo_0.2.16_darwin_x86_64.tar.gz"
      sha256 "a1995b61cc25ba7da6f2017a48dc6f6156cbeb506cd79af2cce59342cb881dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.16/lazdo_0.2.16_linux_arm64.tar.gz"
      sha256 "f7e7481557fd7f001c996efb9e38eb9a1a8a81889652045ad1fe5fd7fbe34f2c"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.16/lazdo_0.2.16_linux_x86_64.tar.gz"
      sha256 "dc7646a692e690fa763a42decec97f3915a96d62dfd8ab8c73d204a5390d6a70"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
