class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.4/floe-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "5403d695ad92255aba7efe6a70a6c99e8a6281d052b7cd738a16fa020fb1aefd"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.4/floe-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "e34c78fc315c6ed68980e5e0da319ac49c0078bce688d0b4881e6151b95a905d"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.4/floe-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "37379521b7029d5422df367f8b948f097a0702c145e5fb1db3c29d470b247e4b"
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
