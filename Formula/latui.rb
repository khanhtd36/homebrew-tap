class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.5.0/latui_0.5.0_darwin_arm64.tar.gz"
      sha256 "dc219aee0c01220129c95b7dc2c63cac74fe88aecf0be32b9db9cb8204a4fdcb"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.5.0/latui_0.5.0_darwin_x86_64.tar.gz"
      sha256 "be16b05922fca20633a0c1619c3b9429299e4e92c6f2eb2b6b23b408d7b90388"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.5.0/latui_0.5.0_linux_arm64.tar.gz"
      sha256 "d1e498a071ea6f7d7a540051491ef6c7a85e0cbd95d7ca97f631a8e4d8b2620b"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.5.0/latui_0.5.0_linux_x86_64.tar.gz"
      sha256 "a7035ef9bd764d0f49a9385d7bb9d8a9218bbc05bb19e8664772142467dc47b7"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
