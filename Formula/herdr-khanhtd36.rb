class HerdrKhanhtd36 < Formula
  desc "Terminal workspace manager for AI coding agents (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/herdr"
  version "0.9.3-khanhtd36.1"
  conflicts_with "herdr"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.1/herdr-macos-aarch64"
      sha256 "a77e478e18139158cd32c44e69eacc7dfb9bc338bbad007f928e14de031b8e91"
    end
    on_intel do
      url "https://github.com/khanhtd36/herdr/releases/download/fork-v0.9.3-khanhtd36.1/herdr-macos-x86_64"
      sha256 "4799fdb0a189e17828d9eecb208586980d80c274a0bef74098a8eff90e49ca51"
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
