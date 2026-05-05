class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.7/floe-v0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "530eb5bc9332206dbcec5cd7986134effe657880abf3ac23ca3f013da2bf13c4"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.7/floe-v0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "d7ccf9fcfa198c616da114aea006224a6c0bd100e935eaec7d375cbeffb8db11"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.7/floe-v0.3.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6c935d3691219c751563218062e14f3d288732f2bd9eeea628758819e8d79c17"
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
