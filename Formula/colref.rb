class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.8/colref_0.7.8_darwin_arm64.tar.gz"
      sha256 "17bb710897922ddaa5f9f6a7947f934841ec236b2b1ee2c3b9c40088bf77547b"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.8/colref_0.7.8_darwin_amd64.tar.gz"
      sha256 "16f55a4543bf66f8fb04801e08dc420e7150f538a269c257e4b5505eac7a0ba9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.8/colref_0.7.8_linux_arm64.tar.gz"
      sha256 "765c4d24efe390dcfcda76193a7a732ff03ccf8c7bb548810096af47f0dc7f54"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.8/colref_0.7.8_linux_amd64.tar.gz"
      sha256 "056e9a653825d3312bf593a81ab5f56fcb1b021742cccd304656f5c00188a6cf"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
