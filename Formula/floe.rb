class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.2/floe-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "8ce1c49e27754ad61e7c4e27c2907a5d6d8187dcccb7f1a3ef885bc0c5c5942c"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.2/floe-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "4e81e04071425c74c08236eabb5b36f083274f0558def63cbecc113ef259d66e"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.2/floe-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f7b63d02b3d0f2d6c45a4442309fe3cc02d883e811f1be16141f86d4b2b3543"
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
