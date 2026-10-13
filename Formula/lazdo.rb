class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.30/lazdo_0.2.30_darwin_arm64.tar.gz"
      sha256 "f84aa6fcd9afdf208d3abb5c5acf582d8092ab041a320ff2101d1708d56d4063"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.30/lazdo_0.2.30_darwin_x86_64.tar.gz"
      sha256 "938c6f24cd02ecd8392773f8188073db2ccb71ae2033bf4dc148e0c957fa4501"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.30/lazdo_0.2.30_linux_arm64.tar.gz"
      sha256 "c05ebd49e142271bac8098fa30b677496301d2f01945ab098c3acdce12344ff0"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.30/lazdo_0.2.30_linux_x86_64.tar.gz"
      sha256 "f24cc76d8ed791126dc5a650a9fef9c3b82da70ce1f805191c675881087d9d19"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
