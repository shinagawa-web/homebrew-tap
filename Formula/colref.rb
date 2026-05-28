class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.6/colref_0.7.6_darwin_arm64.tar.gz"
      sha256 "f06662612f9dc263f57ccb00fc6f2ea213ff02164d781e8fc095a8435d49cf48"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.6/colref_0.7.6_darwin_amd64.tar.gz"
      sha256 "39dbae35f22975ebd49258f07a226bdd8bd101200e57099ad41ea227b1d1c816"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.6/colref_0.7.6_linux_arm64.tar.gz"
      sha256 "d3bddf74a5277a0f133ea956401f17933698f81fe19d9c82ca1700c52c644b15"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.6/colref_0.7.6_linux_amd64.tar.gz"
      sha256 "0be57f97edd0fbb281c8528b91f387e268a3ac55e8c5daa17acc205d21565668"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
