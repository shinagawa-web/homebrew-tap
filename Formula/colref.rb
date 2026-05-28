class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.7/colref_0.7.7_darwin_arm64.tar.gz"
      sha256 "1ff0befeef8698895194b8a67347ef390dc14fbe80ab86681dbe50e8329e59aa"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.7/colref_0.7.7_darwin_amd64.tar.gz"
      sha256 "2d61ed7288db065809c6eb0b598a547f53f886220f71e19e10231c0964c70932"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.7/colref_0.7.7_linux_arm64.tar.gz"
      sha256 "65f56ad786e812afe8eaca3c4423bfc20aaf503f6b3af9050f73f8d5b5b605d0"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.7/colref_0.7.7_linux_amd64.tar.gz"
      sha256 "7902a44eda2acd688ff969a2bb7bf9e76573fcabc091bca4033abe2610fb6ae4"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
