class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.4.0/latui_0.4.0_darwin_arm64.tar.gz"
      sha256 "6ac95ecd5fd5159caa8400e5e03e450498ecb7761544678f7a531c23de7f5dff"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.4.0/latui_0.4.0_darwin_x86_64.tar.gz"
      sha256 "382fca53d5b994b42ec6f533887c7599b5925fff0206c03c13a296ea2f111cdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.4.0/latui_0.4.0_linux_arm64.tar.gz"
      sha256 "544e57a9f33268825c16bfe2c4baf30b935148617f114ec1feed2f2456e175ca"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.4.0/latui_0.4.0_linux_x86_64.tar.gz"
      sha256 "886b402b6caff012ea943e2b1104c1849b0262f3005dccdf60b698859c82f690"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
