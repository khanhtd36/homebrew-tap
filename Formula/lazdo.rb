class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.46/lazdo_0.2.46_darwin_arm64.tar.gz"
      sha256 "5d090a2dbd718101d82e5bf290ae804dfa4e767bb2edaa66a59b918771112c61"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.46/lazdo_0.2.46_darwin_x86_64.tar.gz"
      sha256 "10d212b7cb18e555e60c28874a6f0a817b0f9506cd1cabb96312f96de2c0cba0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.46/lazdo_0.2.46_linux_arm64.tar.gz"
      sha256 "9bc3fe8ea88dba1559cf7b125cfb732ef16bd5ee584800808f1a72a1feebc501"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.46/lazdo_0.2.46_linux_x86_64.tar.gz"
      sha256 "167160be5ed70b7c22807031a7dca0d996471885852d6f96b3b40fc038a50376"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
