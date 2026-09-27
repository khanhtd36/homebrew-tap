class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.1-khanhtd36.7"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.1-khanhtd36.7/herdr-macos-aarch64"
      sha256 "e36882b0acc7b100f5373f1c64278cee3cdd15a5e9545a540c48b4bb5624dfb8"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.1-khanhtd36.7/herdr-macos-x86_64"
      sha256 "c97846c66edf3d0d33940872e9dd259bfc7b3650bbdaa845aa43c1765b173d2e"
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
