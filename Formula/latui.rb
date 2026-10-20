class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.5/latui_0.2.5_darwin_arm64.tar.gz"
      sha256 "8aefe89c146427b67c3b05a48a3bec28dafd4babe0807ce61d89381f57ddc3da"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.5/latui_0.2.5_darwin_x86_64.tar.gz"
      sha256 "e6acee1ee9dfa99c0566ffab40a4a4489e8e03e50cfd97e92785aac3c572afae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.5/latui_0.2.5_linux_arm64.tar.gz"
      sha256 "7ac765f512600e373413e72be39711f36209dcd2ee30c22dff10b2296ea56fab"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.5/latui_0.2.5_linux_x86_64.tar.gz"
      sha256 "6223e965192d0515ca52ce45cd6ab1769cff48065ba7d97d066e135f3b9751f2"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
