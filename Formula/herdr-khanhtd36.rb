class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.1-khanhtd36.6"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.1-khanhtd36.6/herdr-macos-aarch64"
      sha256 "3c1de93120d22180a7733732b692a5db63742ef92c2aee8bb48a32bba74b3237"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.1-khanhtd36.6/herdr-macos-x86_64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000"
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
