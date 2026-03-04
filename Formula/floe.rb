class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.1/floe-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "87bac53f40a742c6b02248031280d37a8b59a041e0306c5543dbee4958b7f613"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.1/floe-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "90b04ad5a1fadba99a835be4d064fc5d7e40c987cd40881e611f2e191a360192"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.1/floe-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f0e24f5ddd1bb56567dd6bde0cec1331a1d8fa7bdf1534d9a44d126054b8563"
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
