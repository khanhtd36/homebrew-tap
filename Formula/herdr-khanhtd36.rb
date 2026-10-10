class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.3-khanhtd36.4"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.4/herdr-macos-aarch64"
      sha256 "d85a402bdd8f4c04c4dc7115b58c56952338cf7f4b89d97e0712d4e78087882f"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.4/herdr-macos-x86_64"
      sha256 "c25c1b0ef675add9c114d155d54e6a36eacb4b3fe96e94f41b54c14951852eaf"
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
