class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.5/floe-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "3c0965a351ae5d99934ef6b5535b312183e13a46b90cf3aeec054e201fbea18f"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.5/floe-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "f8a46982090d92c6de8f5c308811a032f48eda9214e62c09fafda8348fc0c7a8"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.5/floe-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2ea54486dc7d4098e9175e2ff64d92299a1941f241ca4be5731f56da6efd37e6"
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
