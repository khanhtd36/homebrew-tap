class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.2/lazdo_0.2.2_darwin_arm64.tar.gz"
      sha256 "e93c525259219ce281dcffcc853aff9351f129f2a7fcb4eea2d6da3c5ed78483"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.2/lazdo_0.2.2_darwin_x86_64.tar.gz"
      sha256 "9d4405c0942410b0ff9678812dd64bad1b813b7f00a5163e7c3a4977c9642305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.2/lazdo_0.2.2_linux_arm64.tar.gz"
      sha256 "a6141d72e1e28746f69ca1fe46eae2820ba0d4af9689188135c1a7c8d9b02c49"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.2/lazdo_0.2.2_linux_x86_64.tar.gz"
      sha256 "9e5a80b038d91d259e414843953fa8e224e1e3b06faf21e746bc0b7fb804fbaa"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
