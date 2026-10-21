class TuxedoKhanhtd36 < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/tuxedo"
  version "2026.8.1-khanhtd36.4"
  license "MIT"
  conflicts_with "tuxedo", because: "both install a tuxedo binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.4/tuxedo-fork-v2026.8.1-khanhtd36.4-aarch64-apple-darwin.tar.gz"
      sha256 "987e21c5006bbf1ac6938560741bd1c2a8550b4460b147e20505b251018af3da"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.4/tuxedo-fork-v2026.8.1-khanhtd36.4-x86_64-apple-darwin.tar.gz"
      sha256 "eb87ed07f7fdf8a05f2ee5f2f8d5536c8e5c614171763370de9e1b5f82cf5b99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.4/tuxedo-fork-v2026.8.1-khanhtd36.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5590ed943590ed1c1c48d655d74c845da858da06f6b64949e2698ccffb54d64"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.4/tuxedo-fork-v2026.8.1-khanhtd36.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57a105e07e6042a01361e29bd198a12869e68eed2360460d9767eb011dc39361"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
