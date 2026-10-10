class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.17/lazdo_0.2.17_darwin_arm64.tar.gz"
      sha256 "c489eb9ca50ed15c7f1f7431cb4ab771a8523d623135c0f7eddd71c80ab6202f"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.17/lazdo_0.2.17_darwin_x86_64.tar.gz"
      sha256 "6f3cffcaee0bd49cf23bfeb164c41459a5618c0ec566d234123b42b6fe7a8331"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.17/lazdo_0.2.17_linux_arm64.tar.gz"
      sha256 "20144ce826238b364b729c6b7ea894bb51849a20f5c3f3263265b46bf2854904"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.17/lazdo_0.2.17_linux_x86_64.tar.gz"
      sha256 "f3d435c42b7ac3151b1e971040fbfd266ccdf3bf60b19a173d6da83a6bf37ef1"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
