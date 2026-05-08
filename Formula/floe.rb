class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.8/floe-v0.3.8-aarch64-apple-darwin.tar.gz"
      sha256 "2fea2c8c21fbcb094c76cc3e6fa88f6181558a02dc4fb4c8a4f85478e7fc43e3"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.8/floe-v0.3.8-x86_64-apple-darwin.tar.gz"
      sha256 "7448be46cd900eea7662184658e7c1869a967e7af965a63c48f0e7c1eaad6180"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.8/floe-v0.3.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "897ba55e65f54334cfc31a18f2fae06042cbc6701f12685abb66f283205a3fe2"
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
