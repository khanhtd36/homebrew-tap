class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.13/lazdo_0.2.13_darwin_arm64.tar.gz"
      sha256 "2bfe38e84bd47f41fe8d722e2855343795dc88a05ef47c01df793844372aeb0d"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.13/lazdo_0.2.13_darwin_x86_64.tar.gz"
      sha256 "4988e4c7143091dfb80b478f58f787c259b5ba94d321d0b8160c0cfdedffdb63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.13/lazdo_0.2.13_linux_arm64.tar.gz"
      sha256 "9dc1d139bc9074ae43cfafe1e7443e33e7c9c6c76dc66df98926cb333e676c5d"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.13/lazdo_0.2.13_linux_x86_64.tar.gz"
      sha256 "4ed86f0209b3d32902590280429b0cc199877f2453e7ffcffc95e194f9786480"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
