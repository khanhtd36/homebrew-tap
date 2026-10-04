class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.3-khanhtd36.2"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.2/herdr-macos-aarch64"
      sha256 "336ad5c290e8cf1791029a04ff9a8f550afe7f1e18bdbf32e545ece9bcca0925"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.2/herdr-macos-x86_64"
      sha256 "91adadbc5781111d0601996e41b95f683381b39ee7eda384f8dbab296a3815e5"
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
