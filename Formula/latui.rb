class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.0/latui_0.2.0_darwin_arm64.tar.gz"
      sha256 "c162b04e5c2fb3acbea1b84af1a5734cb8348528d99efe8f6898593695680460"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.0/latui_0.2.0_darwin_x86_64.tar.gz"
      sha256 "cd8e5b7e1f0db860fd07f43a4c33a733354159fd64b86f1df2df700f7db8b634"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.0/latui_0.2.0_linux_arm64.tar.gz"
      sha256 "8a1d554748ef956393d95aac8deb838ebff216208b91f759005dd26926353fbc"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.2.0/latui_0.2.0_linux_x86_64.tar.gz"
      sha256 "cfe79d2700349de65fb8cd7e957038d84d0c9cd329b66a38db96d4ea9b22e3ef"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
