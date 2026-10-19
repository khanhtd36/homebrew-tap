class LazygitKhanhtd36 < Formula
  desc "Simple terminal UI for git commands (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/lazygit"
  version "0.65.3"

  conflicts_with "lazygit", because: "both install a lazygit binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazygit/releases/download/v0.65.3/lazygit_0.65.3_darwin_arm64.tar.gz"
      sha256 "5f838cd28f39a9205a9da95d2494073675399271341320778d956b303bcb4c52"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazygit/releases/download/v0.65.3/lazygit_0.65.3_darwin_x86_64.tar.gz"
      sha256 "fc83153476f714d8471eb5e4ff26b6053ef7277cf479f561d1d73875ccc8667d"
    end
  end

  def install
    bin.install "lazygit"
  end

  test do
    assert_match "lazygit", shell_output("#{bin}/lazygit --help")
  end
end
