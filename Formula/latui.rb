class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.1.0/latui_0.1.0_darwin_arm64.tar.gz"
      sha256 "190c9d4a20134535d6509cd7996018c205cb780a295cde0f2ee3af9d39720cc6"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.1.0/latui_0.1.0_darwin_x86_64.tar.gz"
      sha256 "f22e744a9fab0c53f1b26e58e8277ac1c33fb36abc409892c72546b83e2c8e8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.1.0/latui_0.1.0_linux_arm64.tar.gz"
      sha256 "5e2d7d60f9654d264e46ffdbd8d9337b4be70eb342ec4f60fe7d99383e69c48c"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.1.0/latui_0.1.0_linux_x86_64.tar.gz"
      sha256 "f2b05367ce46b6ecf3ae763e1a174bff7c2f29e406144d6bf55aabf3a5aef541"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
