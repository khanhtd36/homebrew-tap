class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.3/lazdo_0.2.3_darwin_arm64.tar.gz"
      sha256 "4e06fa744c1b5ebbab156d6dfc1f5c51582cb8a27b6d843f121e5ea744a17f46"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.3/lazdo_0.2.3_darwin_x86_64.tar.gz"
      sha256 "cef096b450f56adb511e7c92f18f0ea712f93cb1f5eaf27c1172f7766bba94e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.3/lazdo_0.2.3_linux_arm64.tar.gz"
      sha256 "d510e5145780ce3d9627cd67e11b2f493856324252e10ed9cdfde5d55225c0dd"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.3/lazdo_0.2.3_linux_x86_64.tar.gz"
      sha256 "ba0a5b5ddab27f6532f7775e92c2dfd1704abd2ce4c054ea6b1c3a1b8c3af6a9"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
