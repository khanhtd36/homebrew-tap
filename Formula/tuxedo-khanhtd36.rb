class TuxedoKhanhtd36 < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/tuxedo"
  version "2026.8.1-khanhtd36.2"
  license "MIT"
  conflicts_with "tuxedo", because: "both install a tuxedo binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.2/tuxedo-fork-v2026.8.1-khanhtd36.2-aarch64-apple-darwin.tar.gz"
      sha256 "7bd2d96935961237c61e5ab31b55c60f5639b8e2eb1674f9668f08bf6eb2a0a5"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.2/tuxedo-fork-v2026.8.1-khanhtd36.2-x86_64-apple-darwin.tar.gz"
      sha256 "21b389d8fdc4112533c1a84c9fa98f4fb01262e5c1c0f472555af1baa6352809"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.2/tuxedo-fork-v2026.8.1-khanhtd36.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "028c125f283e7b6dcacb0ee5c2beffd9680a36aae466aedcfef22cece29a6f96"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.2/tuxedo-fork-v2026.8.1-khanhtd36.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d548084c3e8403b762f5730acf22a43bc1e3db8395322d31d0e2b326a3935b60"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
