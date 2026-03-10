class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.1/floe-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c3b1e0a58b82108298aaa39655bd734386c7a8ececde32b1af14052a9ff9569"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.1/floe-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "a296ed71df3b72db00b0453a15c3c9fe00e87a263eecf0a4c7487623cc89d7ec"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.1/floe-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "81d8da3b5768547dc1e9fba1b8afaad5408697b584448e9b06cf974ace4ce816"
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
