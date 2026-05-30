class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.10/colref_0.7.10_darwin_arm64.tar.gz"
      sha256 "cb94be88f995d48e2736e931a46aa44a07db26567f8332957abae440b56a5937"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.10/colref_0.7.10_darwin_amd64.tar.gz"
      sha256 "181b580b6ee230d65c90d15d3460f7dc07bd5ae90c93ce0eff658e105e627dbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.10/colref_0.7.10_linux_arm64.tar.gz"
      sha256 "b90bdb3604fa054e6e73166085dd153f51b122399d25ebeca6a8598bb667683f"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.10/colref_0.7.10_linux_amd64.tar.gz"
      sha256 "1ce4ef4a82ef9c67b7403ebaca95d65c53d9988509a5a0a985121f300acaaae1"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
