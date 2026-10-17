class LazygitKhanhtd36 < Formula
  desc "Simple terminal UI for git commands (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/lazygit"
  version "0.65.2"

  conflicts_with "lazygit", because: "both install a lazygit binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazygit/releases/download/v0.65.2/lazygit_0.65.2_darwin_arm64.tar.gz"
      sha256 "a4869e0df8b2e30e0031a9402afd3e0e19bacf846cb3813376b705b7e0b037a8"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazygit/releases/download/v0.65.2/lazygit_0.65.2_darwin_x86_64.tar.gz"
      sha256 "54fe59f015299d93e85c5d702168c176d098cc30eb3ba0774172c247e5fa352f"
    end
  end

  def install
    bin.install "lazygit"
  end

  test do
    assert_match "lazygit", shell_output("#{bin}/lazygit --help")
  end
end
