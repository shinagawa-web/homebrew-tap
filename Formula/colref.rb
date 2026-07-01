class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.8.0/colref_0.8.0_darwin_arm64.tar.gz"
      sha256 "f5ce13fc8f71c210558d18405ca26c848c63dc1bf7835a7568695c81689872b8"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.8.0/colref_0.8.0_darwin_amd64.tar.gz"
      sha256 "14ddce348ecf20bb7db94a84bb91a78ddd226f0aac0169c7cafcad28bdc9e91b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.8.0/colref_0.8.0_linux_arm64.tar.gz"
      sha256 "47b76159d04c9ac91011486d9e73eeffd6168248c17ad5def6ac4ab3cb8bc99c"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.8.0/colref_0.8.0_linux_amd64.tar.gz"
      sha256 "7ceafc162318ca7e9790d24cd5b783ebc91bb6ef670051ca5f7907158388a469"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
