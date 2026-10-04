class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.0/lazdo_0.2.0_darwin_arm64.tar.gz"
      sha256 "9c7da36a90f236ac3d2a12f13c248c9a5c848ff1b6c36f39f1f680bfca6c33b1"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.0/lazdo_0.2.0_darwin_x86_64.tar.gz"
      sha256 "2a6582573de10f14b15dc8d1826ec35b85683513a14723b791066bd02c9f489b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.0/lazdo_0.2.0_linux_arm64.tar.gz"
      sha256 "6cf58ba2b09afbc8d87e6fe921d5d331eff6af44caaa6c6ac84c1aa66b3c5716"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.0/lazdo_0.2.0_linux_x86_64.tar.gz"
      sha256 "56871b018641bce3d903fe569dab17792e84cacdaeecd6726c5240e498008cd8"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
