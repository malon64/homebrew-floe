class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.6/floe-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "dc780515127f562d60d7a962b41df8f6447e30de465af285144049b462034554"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.6/floe-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "cc020ffaa6ecdb08515c11643122702a2f18bc06774e89be02b7e6ebeb62f74e"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.6/floe-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef5beab15b79360f75e4d84c73942b1b0b68a3fa14aaed76801fc104759ecf6f"
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
