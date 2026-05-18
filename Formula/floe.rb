class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.0/floe-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "166565c0b51e61ec7300ac942f46df88a10a82d6a72d4c7b7682223712a11176"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.0/floe-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "62f7a72dc8fa81f797efd432b462e017ed00ea288e730bd300f5899f1662206d"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.0/floe-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f624a83a98918471fc18ad115043cd2220a647350f7a580b2934cd00b3122623"
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
