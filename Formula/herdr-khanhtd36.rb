class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.3-khanhtd36.5"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.5/herdr-macos-aarch64"
      sha256 "c84df66d1c3d10ce209f927e5282e24c4ffc8e45432d61f3871a733b2998da27"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.5/herdr-macos-x86_64"
      sha256 "93f6388cdb235d1b3f3b0f4abb49fb8e7ebe5e80a13c59a5ccd976e64f396919"
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
