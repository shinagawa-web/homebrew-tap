class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.4/colref_0.7.4_darwin_arm64.tar.gz"
      sha256 "e223788d4a94591d5e47f7c2247586e237af3f5ea8ea94019e93a2b52427226c"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.4/colref_0.7.4_darwin_amd64.tar.gz"
      sha256 "4d3684fe8795d02e900c3d64a22d48c3601572adea8ab01dc3d1ebc71a845263"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.4/colref_0.7.4_linux_arm64.tar.gz"
      sha256 "8c09df870cd4a55e878a7c09c2f9ae580cbc26792339716e4c5327051c6298b2"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.4/colref_0.7.4_linux_amd64.tar.gz"
      sha256 "09e50cd93ca6b666c589c642017c38fa98975eff2409fc5e6a29dd4e37f90434"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
