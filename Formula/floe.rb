class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.1/floe-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "54c229ca8dbc1603bee5f13e1558503e85501e7350b3793f55741a926e976559"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.1/floe-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "22e637dded8a481e41aec3558d0342f7aae96ad31f95827241e8a094fdcdb5f7"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.1/floe-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "82b3d7dc1776be08f579d6400b0b3bbb8edf9122890c1e14fa6c8a58f846a0c4"
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
