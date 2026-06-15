class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.5.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "ad91352caad23b4abf88961f7a7e197639507e9cf727848ea4e3d2053f1b3d1f"
    else
      url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "edbac8526733a6f441e3ca8b7dfbbedda8f45613491cabf2fe866c51c581dce8"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "022d2fd022da4fac4c424b6967c2bd6e629732b2a92c6d51ed725368f9845484"
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
