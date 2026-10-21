class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.1/latui_0.3.1_darwin_arm64.tar.gz"
      sha256 "a69c5cd6beac208bb2d4cb4fd73a55c770e0918ee4c2f12bf79d5224b8a1ff13"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.1/latui_0.3.1_darwin_x86_64.tar.gz"
      sha256 "f4a60e5f4050ce5e4fa1371cc19137b77ad4f8ec53f7f39af1f648b6ed672190"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.1/latui_0.3.1_linux_arm64.tar.gz"
      sha256 "97f7b941a5145082df6c960a82cee66032718467ee55039b923f463fd84c82ff"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.1/latui_0.3.1_linux_x86_64.tar.gz"
      sha256 "2d48f5d7427723016d76c41fa0f335418b3392937b54782a40c4b545c7d76dc7"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
