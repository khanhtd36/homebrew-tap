class TuxedoKhanhtd36 < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/tuxedo"
  version "2026.8.1-khanhtd36.1"
  license "MIT"
  conflicts_with "tuxedo", because: "both install a tuxedo binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.1/tuxedo-fork-v2026.8.1-khanhtd36.1-aarch64-apple-darwin.tar.gz"
      sha256 "1b1c1c2022d254321b5fe3f8469f53e0e2b76de575c9e7b5f5e7d3df48bc60a9"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.1/tuxedo-fork-v2026.8.1-khanhtd36.1-x86_64-apple-darwin.tar.gz"
      sha256 "2000f3275ca37d99fdd417e45e76e055611a49b60c0a9640bee10f736f35bdcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.1/tuxedo-fork-v2026.8.1-khanhtd36.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d830968a40733c868969999080f461c5bc818b658a67b87e66e89fb593e1f9b"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.1/tuxedo-fork-v2026.8.1-khanhtd36.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2d4ab2f41aaa2b77b5d89f23d16f933e5c68126245e63a4e3a229eeed552f3b"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
