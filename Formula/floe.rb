class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.7/floe-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "5546a8ba33406924616653a955148a1ac0a5e79768250f51a5d23f1ae5115569"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.7/floe-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "914585f024c55939b9b3f2b09e2cceccc441037f0734946ac12a64663328e235"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.7/floe-v0.2.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "32897a75a33dd8fa5a6d9c8f7d89f753f00c613b2aec2c86a60453106d692d2c"
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
