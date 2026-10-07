class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.3-khanhtd36.3"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.3/herdr-macos-aarch64"
      sha256 "175f7996da606069c944490de20680abd7ccc0c90f53650ab9d6ea539d808747"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.3/herdr-macos-x86_64"
      sha256 "65caea470ce68a020385da428153febde469321bea6994ef407c7d7790c1c424"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "herdr-macos-aarch64" : "herdr-macos-x86_64"
    bin.install binary => "herdr"
  end

  test do
    assert_match "herdr", shell_output("#{bin}/herdr --version")
  end
end
