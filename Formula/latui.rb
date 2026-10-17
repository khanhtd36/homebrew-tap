class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.3/latui_0.2.3_darwin_arm64.tar.gz"
      sha256 "98aaf31c1a79a38dc4dde7a6e2f86cefb846b33f35179a324063768a756db0e9"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.3/latui_0.2.3_darwin_x86_64.tar.gz"
      sha256 "771278d7f6dcf0869588563350a23e957849bba58e1aa520df4398e048de7c8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.3/latui_0.2.3_linux_arm64.tar.gz"
      sha256 "6c567cdc17985a5337e120dcd69ad6e226028d655fecf2ad676f1235bdeaa852"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.3/latui_0.2.3_linux_x86_64.tar.gz"
      sha256 "58d93c3e1ac05d651885e4dd71091049aa30b294963803b4fb79a6bd757bf39f"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
