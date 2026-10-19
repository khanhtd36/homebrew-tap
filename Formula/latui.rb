class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.4/latui_0.2.4_darwin_arm64.tar.gz"
      sha256 "0ae03e35a2d12816a3b6cef95d70edee13b34b737cb2b5870933cebbbdfe023a"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.4/latui_0.2.4_darwin_x86_64.tar.gz"
      sha256 "782e88fc1a573c0db798207f86604774730b67af5bcf5b90387ebc9d344fac88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.4/latui_0.2.4_linux_arm64.tar.gz"
      sha256 "e18445ece246a86b0e5cae027fc38a3a802c63a887b11c7eec0730bb9a84b862"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.4/latui_0.2.4_linux_x86_64.tar.gz"
      sha256 "06c73c38c4f884d8609887b71f88a17ee81b2a71f5a64bf2833801f9e3ea55f3"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
