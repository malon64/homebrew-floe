class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.7/floe-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "ca9aa5b05234a736453d68beafe234006e09109920856e0a053ef8963d523f0b"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.7/floe-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "dbf3a31f5d978969bce3438cd963c82e10e85b4e8b5337e0c721ad49cb2e6d5a"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.7/floe-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "425691b60ad1cb6918d86f589a9c5a5788ff9cc649ffbde03a011756b0313837"
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
