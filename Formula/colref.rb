class Colref < Formula
  desc "Check whether a database column is still referenced in your codebase before you delete it"
  homepage "https://github.com/shinagawa-web/colref"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.9/colref_0.7.9_darwin_arm64.tar.gz"
      sha256 "548f009a2c72298f02279902fcef4ba9e8b2d7320356e1e7d20d9c272e732107"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.9/colref_0.7.9_darwin_amd64.tar.gz"
      sha256 "e8ebd99db6e48644c06f50093f81856c44d7c1310f897b22914a5ff95542dfd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.9/colref_0.7.9_linux_arm64.tar.gz"
      sha256 "96633ad7c55adb1984913e927e59bcec4645cb0a1cf8844f8a63aaf6e2b756c9"
    else
      url "https://github.com/shinagawa-web/colref/releases/download/v0.7.9/colref_0.7.9_linux_amd64.tar.gz"
      sha256 "be915a307fa7a9d0e6d28df9e847e4bd166c1340530395ecd6221939f2b98b07"
    end
  end

  def install
    bin.install "colref"
  end

  test do
    system "#{bin}/colref", "--version"
  end
end
