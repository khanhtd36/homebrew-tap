class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.40/lazdo_0.2.40_darwin_arm64.tar.gz"
      sha256 "ca81e7c5fe2b724c4e20b93146038d1f3afa32119a018cebaa85ff30917aa051"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.40/lazdo_0.2.40_darwin_x86_64.tar.gz"
      sha256 "40a8057ffd8dd3d5f2f7d8a067a47a11fe6ace6cf4171287c519fbe0b019660b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.40/lazdo_0.2.40_linux_arm64.tar.gz"
      sha256 "e5b7f3562225d3f68c7a266eef1f95627535bd850c01364365e181d833de2067"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.40/lazdo_0.2.40_linux_x86_64.tar.gz"
      sha256 "429a3f3c5ccb4b6cc4c1ec916f7ce9fb3e7e6aa7fe095df0f7a64e59d946767a"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
