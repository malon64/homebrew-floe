class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "9f651faa994583b76aec2b149f0309b1c0e9f2d4352d023cea150592970def07"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "2365d4aa8aa8d6e44b2bf5864866fa29a5ece9a05a59bd418a9747ec2bba2aa0"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3c6f074a445c12367b03e58c1efcd91b3332ada84de4b1af19a4b009b4265f1f"
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
