class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.23/lazdo_0.2.23_darwin_arm64.tar.gz"
      sha256 "1ca99faf9b2d27775c5bb951ce5f3c6c91144a5b59f6cf8fd5dcb3c801bdb857"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.23/lazdo_0.2.23_darwin_x86_64.tar.gz"
      sha256 "2c87559d21559441722c2d18eb1f4e818787deef28d0962d5d3b9c8317e0f933"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.23/lazdo_0.2.23_linux_arm64.tar.gz"
      sha256 "11b89f6ed85bc6218bb2f325a82bd4e72ea92243db9cc565f4e1497175e8c667"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.23/lazdo_0.2.23_linux_x86_64.tar.gz"
      sha256 "fb901da9aaeccd3bf1b674144bca97817347bbd9abcf0501ffa829d61ad04c0f"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
