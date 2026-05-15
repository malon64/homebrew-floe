class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.10"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.10/floe-v0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "bb485134c4d4f41c6bfa61ef8ee1338bc2b79d08ffa2edc027687cd833286f47"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.10/floe-v0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "5a018722838f54be18aefd9044ddbf2c5130abb582a2b1b5e0df61e5deedc716"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.10/floe-v0.3.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d41a0efa228e61fc1b367477c4ae5dd93c900f332b65697eb3d996af250131ae"
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "floe"
  end

  test do
    system "#<built-in function bin>/floe", "--help"
  end
end
