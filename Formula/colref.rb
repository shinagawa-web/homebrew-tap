class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.5/colref_0.7.5_darwin_arm64.tar.gz"
      sha256 "b5a1deef2014c15dacdd0aa14a77787145fa63e78cbc670d3ed85c4657a46f5b"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.5/colref_0.7.5_darwin_amd64.tar.gz"
      sha256 "046d4e0a970eafbbde31246ac3f5d167cd8f481d5d3f3c920761146686a7d46a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.5/colref_0.7.5_linux_arm64.tar.gz"
      sha256 "fda29b072942939f17c049e2c5116df2d31e43b5b9a1878375970a1844b22e1c"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.5/colref_0.7.5_linux_amd64.tar.gz"
      sha256 "f18cd7901c0bf5d7c1123d3b0c97a5cb53945e8236638f1f8fba01bcdb9eaf1f"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
