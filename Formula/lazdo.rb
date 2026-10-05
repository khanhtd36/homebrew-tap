class Lazdo < Formula
  desc "Lazy Azure DevOps: pull requests, repos and pipelines in your terminal"
  homepage "https://github.com/khanhtd36/lazdo"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.4/lazdo_0.2.4_darwin_arm64.tar.gz"
      sha256 "155bcf7681b08ca75ef3c49391e7882ee7ad93feb2fa295b769e81f7e11fa3cc"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.4/lazdo_0.2.4_darwin_x86_64.tar.gz"
      sha256 "6cf5b8f6fe87bc56a36b2e670a0fe35f81e82f342578c707b37d146136fbad96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.4/lazdo_0.2.4_linux_arm64.tar.gz"
      sha256 "0fe9d05bee97c7b6cc0c8039c3911e65deb2bcb61d4265c0abedc2be0bbb6f43"
    end
    on_intel do
      url "https://github.com/khanhtd36/lazdo/releases/download/v0.2.4/lazdo_0.2.4_linux_x86_64.tar.gz"
      sha256 "c90248b7dd67e58d62c1eb63a20b8936364a769d6252f53b74f1376d03a81d6e"
    end
  end

  def install
    bin.install "lazdo"
  end

  test do
    assert_match "lazdo", shell_output("#{bin}/lazdo --version")
  end
end
