class LazygitKhanhtd36 < Formula
  desc "Simple terminal UI for git commands (khanhtd36's fork)"
  homepage "https://github.com/khanhtd36/lazygit"
  version "0.65.1"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazygit/releases/download/v0.65.1/lazygit_0.65.1_darwin_arm64.tar.gz"
      sha256 "27ef31126743bf96bf98cdd0ca7b5a6610d5b5511bc8dd388fb8f0bdae633c19"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazygit/releases/download/v0.65.1/lazygit_0.65.1_darwin_x86_64.tar.gz"
      sha256 "5f734c515c4dfb1140b1ebefe52528e7e61abca5e617e4fe553bbac1619de6d0"
    end
  end

  def install
    bin.install "lazygit" => "lazygit-khanhtd36"
  end

  test do
    assert_match "lazygit", shell_output("#{bin}/lazygit-khanhtd36 --help")
  end
end
