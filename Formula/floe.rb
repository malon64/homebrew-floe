class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.10"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-v0.6.10-aarch64-apple-darwin.tar.gz"
      sha256 "ec37e18cb969eab25c3999ef92b05dca73c30ee0f6fd4eb4840dd5e8ad5592dd"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-v0.6.10-x86_64-apple-darwin.tar.gz"
      sha256 "9232c89d1d5aa920960e688b7374f3a09e8ee6ec6dd644353edf56c084f83714"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-v0.6.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "304f88d79c8752cab9fd7f7042a9d981d7cbbffee02791632ea2c7c8e364ade3"
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
