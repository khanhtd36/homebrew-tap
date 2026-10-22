class TuxedoKhanhtd36 < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/tuxedo"
  version "2026.8.1-khanhtd36.5"
  license "MIT"
  conflicts_with "tuxedo", because: "both install a tuxedo binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.5/tuxedo-fork-v2026.8.1-khanhtd36.5-aarch64-apple-darwin.tar.gz"
      sha256 "1944e2e812a00e2a6b23ad84dc2a5bbf6ee3a92f714855bcbbb5d32a1c1cf648"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.5/tuxedo-fork-v2026.8.1-khanhtd36.5-x86_64-apple-darwin.tar.gz"
      sha256 "413e7e78c4dd2e151c3b4357883be5799c167fde723e3bb24759b1d4952edb45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.5/tuxedo-fork-v2026.8.1-khanhtd36.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38525e142a6167a409bf66a79913a22666d74300e9021cca608f0e2c67384afa"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.5/tuxedo-fork-v2026.8.1-khanhtd36.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd5ebd33afc6638ea5d1d381c56d9d6c2e1b47756f2cfef6c61b0ec233dd08eb"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
