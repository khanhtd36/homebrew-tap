class TuxedoKhanhtd36 < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/tuxedo"
  version "2026.8.1-khanhtd36.3"
  license "MIT"
  conflicts_with "tuxedo", because: "both install a tuxedo binary"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.3/tuxedo-fork-v2026.8.1-khanhtd36.3-aarch64-apple-darwin.tar.gz"
      sha256 "0379da8511472371d9b4fd2823303d0d571f78e2e0ed5994b4df1ef2281b866c"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.3/tuxedo-fork-v2026.8.1-khanhtd36.3-x86_64-apple-darwin.tar.gz"
      sha256 "867dbb0de109b09b5a503f8c793eed26bd2aca59b70aaca29cec1cb2715614e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.3/tuxedo-fork-v2026.8.1-khanhtd36.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e039fd4cbc72c55501bffb7e619bf9906059e23a62b2aad2b14e9e3b6d73c3fc"
    end
    on_intel do
      url "https://github.com/khanhtd36/tuxedo/releases/download/fork-v2026.8.1-khanhtd36.3/tuxedo-fork-v2026.8.1-khanhtd36.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4156e0f5c2ff6cc5d3073be01c7211d92874bf1507de84a1097f9206332a143c"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
