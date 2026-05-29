class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.5/floe-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "553a155fb7b81a06901525e092367433dd979cd9f86d186c9368e4820aceb3ac"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.5/floe-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "c21d6eb29928298e7724aa70bd6b523c869b4c5d7b6580f478d22eb9ab2c2d24"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.5/floe-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "492e9067c4d0bcedfd8bad4ada23e74c86d60bf1e2101a8b3e68dffecc55cea1"
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
