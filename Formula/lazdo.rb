class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.42/lazdo_0.2.42_darwin_arm64.tar.gz"
      sha256 "9f206c01d0d6e43de8a7b84b97bafe17b603b3732cd147a7da223875d82d39b2"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.42/lazdo_0.2.42_darwin_x86_64.tar.gz"
      sha256 "9aad4b12f71bfae8a62c440f64b3a57a8eaf67dd5c264d39cf955ee90609ad1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.42/lazdo_0.2.42_linux_arm64.tar.gz"
      sha256 "a4c3de8ae77fc077a2461397e1424731e385f2b342d977584ba58b2cc242543e"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.42/lazdo_0.2.42_linux_x86_64.tar.gz"
      sha256 "189435f47855253212eeebf5b639f31dda5303460c5913811546dbad4b217e08"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
