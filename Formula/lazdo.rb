class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.37/lazdo_0.2.37_darwin_arm64.tar.gz"
      sha256 "3975015e6205e5545feefcde63e1672bb96248f4a5d9c0922a2f79350aa10abf"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.37/lazdo_0.2.37_darwin_x86_64.tar.gz"
      sha256 "ab4868fe82ea7648beabcfdf4faa41d9affaa63195471150947e06d39be223f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.37/lazdo_0.2.37_linux_arm64.tar.gz"
      sha256 "399907dd36c6c71ae669ef703ee0ead6f96fb89d739a4d6739a306a4e452f2e3"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.37/lazdo_0.2.37_linux_x86_64.tar.gz"
      sha256 "116b04593edb11c260974f9e496734bf8263e26946bc5d7e01d1a80ca14da2ec"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
