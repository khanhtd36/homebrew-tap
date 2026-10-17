class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.5-khanhtd36.1"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.5-khanhtd36.1/herdr-macos-aarch64"
      sha256 "135b6906dad4b7dbc64e2003ca7564800b774ab7e2883ead508cbdbe5ab394b5"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.5-khanhtd36.1/herdr-macos-x86_64"
      sha256 "32eb9a69ad45b0be43b6818e0604efebcc13937ad9c0d78e554ce692d234fb61"
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
