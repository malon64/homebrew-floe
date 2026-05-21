class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.2/floe-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "24af5ba52e635abf1cb162afe2dead3695526846808729995c6bbbe4c5069f10"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.2/floe-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "f924b4676db28bdec592477d0dac63959f7d0d2f77a7fc89265d0a3398ad3aad"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.2/floe-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b706497119e1b3ba3ba0aa271a1b1cb209ce38b6d24c7cdd6cab698a63fe7f1"
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
