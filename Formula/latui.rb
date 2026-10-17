class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.2/latui_0.2.2_darwin_arm64.tar.gz"
      sha256 "42e8934f28c7ac2974f7be5f5f6675a9aa30cb2cb797c0367cd79edb9ede208f"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.2/latui_0.2.2_darwin_x86_64.tar.gz"
      sha256 "82cabe8e794455f0933b1fb2b16c77747d3e651cbe5a18cfe6b02d3236fb5778"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.2/latui_0.2.2_linux_arm64.tar.gz"
      sha256 "ca8d112279fd7fa637bc06b5433ccd79d661fee18875aa590b7b67394e4bab58"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.2/latui_0.2.2_linux_x86_64.tar.gz"
      sha256 "7a233dc3da7838d0c04491e6deba99e8c30556c8378921a269cd0321cd155464"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
