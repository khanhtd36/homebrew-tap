class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.5-khanhtd36.2"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.5-khanhtd36.2/herdr-macos-aarch64"
      sha256 "bd2246137967a7826449d4b2154e7af550add1bdc1b3b91895852fa7cffa6c03"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.5-khanhtd36.2/herdr-macos-x86_64"
      sha256 "932aa835c44752015152e674379023ab4c0154d60411f67e58096c05268d9be3"
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
