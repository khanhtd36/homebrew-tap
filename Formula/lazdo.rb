class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.33/lazdo_0.2.33_darwin_arm64.tar.gz"
      sha256 "a5679c28da91d8445f70214daa8af193d3403c9d6c162d829897394760b3ac6d"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.33/lazdo_0.2.33_darwin_x86_64.tar.gz"
      sha256 "36dc0cc31814d3a1717fcb500294414ab088c35cdf3d7f8d715314d3a6341b41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.33/lazdo_0.2.33_linux_arm64.tar.gz"
      sha256 "6df4d8b3e0aea40b507ec6fa31f32f44c1d0ce6e0a7c2080b02e751888408a3a"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.33/lazdo_0.2.33_linux_x86_64.tar.gz"
      sha256 "afa7e38be161172d1746c06f6fbd84218298725a57f4f0f2076b77ad9cf0dbaf"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
