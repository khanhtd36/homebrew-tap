class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.1/latui_0.2.1_darwin_arm64.tar.gz"
      sha256 "bcd497df10a13ff6722a8c24fb0b50fce45e16489b6e2174fa47df71efcc50fc"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.1/latui_0.2.1_darwin_x86_64.tar.gz"
      sha256 "5c2f0e1e46ecbda58686454c60ac413f1cb2af0876c427f842fa9b8beed62830"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.1/latui_0.2.1_linux_arm64.tar.gz"
      sha256 "079a61553ef815286effa3a33b55e37fa8acea80f54f4dbb3c63d7b1a1c4ba7d"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.1/latui_0.2.1_linux_x86_64.tar.gz"
      sha256 "fa37fd963ac8b2ea602effb9eeb99f398f9af2f58c37b3599a6c0f8ecdfcd9fd"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
