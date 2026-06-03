class Pgincident < Formula
  desc "Real-time PostgreSQL incident dashboard for the terminal"
  homepage "https://github.com/shinagawa-web/pgincident"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/pgincident/releases/download/v0.5.0/pgincident_0.5.0_darwin_arm64.tar.gz"
      sha256 "11c94b9ae75f8407104374fe8c1df5159f70d4e0a2c1764e314d9fe00f952e77"
    else
      url "https://github.com/shinagawa-web/pgincident/releases/download/v0.5.0/pgincident_0.5.0_darwin_amd64.tar.gz"
      sha256 "1670d9ec24285900d0e2d8e07e210fee95aba0cd65ee3084bcc7aa71f4b8573c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shinagawa-web/pgincident/releases/download/v0.5.0/pgincident_0.5.0_linux_arm64.tar.gz"
      sha256 "5ff98d482062907dec6657280861604172fb8082715bf052d94716cc53175057"
    else
      url "https://github.com/shinagawa-web/pgincident/releases/download/v0.5.0/pgincident_0.5.0_linux_amd64.tar.gz"
      sha256 "66acbf973427a48765c31e112496a8cbcad7233c268690a50f89091011f35344"
    end
  end

  def install
    bin.install "pgincident"
  end

  test do
    system "#{bin}/pgincident", "--version"
  end
end
