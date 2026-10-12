class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.28/lazdo_0.2.28_darwin_arm64.tar.gz"
      sha256 "d270d6a56fe983085516b54e64be116ead991006435d963f083e486d2cc3a4b3"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.28/lazdo_0.2.28_darwin_x86_64.tar.gz"
      sha256 "3816adba7e69dcc152b0d0d66ed3d7bfd9745bce25a9e68afd21541c8d065252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.28/lazdo_0.2.28_linux_arm64.tar.gz"
      sha256 "c45e1507e6b615da55b0c7d125ac5b2e22fd587122ae80d2f6c8f8463296517d"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.28/lazdo_0.2.28_linux_x86_64.tar.gz"
      sha256 "d2ecaca4403c5a4bb8ad694703635c4a93b4804ebf8427f228d2f0627629c31f"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
