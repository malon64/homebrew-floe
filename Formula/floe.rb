class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.0/floe-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "47d854d94eedb2b9375bed85fb12302c0185becf1cad593850af7a35a43c0723"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.0/floe-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a58bcd277af709b828591d4776ba09422b87de36ae40b658b7ac87001626344"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.0/floe-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9eb3b2e793707bf7ccbfb48628506496bb2faf7920b4a6f5df00d1264f242d77"
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
