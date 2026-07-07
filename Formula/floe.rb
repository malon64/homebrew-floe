class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-v0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "e211d3f0f31442ae8bd316f5283fc7ad6da4326489275a7281d6f7d065ef89b7"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-v0.6.8-x86_64-apple-darwin.tar.gz"
      sha256 "58d59ed10c1f3e6a5297b8f480cce3b3b259ebc557a85fe87a4e8915baf0b373"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-v0.6.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "943ff614cff87d37fc7331d8a49e684f99e35716833237587772a4fc76da3189"
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
