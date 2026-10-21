class Latui < Formula
  desc "Lazy Atlassian: Jira and Confluence notifications and issues in your terminal"
  homepage "https://github.com/khanhtd36/latui"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.0/latui_0.3.0_darwin_arm64.tar.gz"
      sha256 "0a769d6dde31c4baaae63274012a9eb77f45f47d1e860a1d969a014e1e6c3f2c"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.0/latui_0.3.0_darwin_x86_64.tar.gz"
      sha256 "08d89c78a24579f15936c3db910d65674a87454d50c780728bdf72f23b1b2656"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.0/latui_0.3.0_linux_arm64.tar.gz"
      sha256 "7cc64bd1b7fe03428601e3a0451e871e0ba35dcf508ff9f30c9f99e0b16f0d84"
    end
    on_intel do
      url "https://github.com/khanhtd36/latui/releases/download/v0.3.0/latui_0.3.0_linux_x86_64.tar.gz"
      sha256 "da02d65be7faae93345234a914d26e892425805253f92b37284fa3a4512a2a7c"
    end
  end

  def install
    bin.install "latui"
  end

  test do
    assert_match "latui", shell_output("#{bin}/latui --version")
  end
end
