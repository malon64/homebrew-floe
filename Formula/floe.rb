class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.5.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.5.3/floe-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "c1372dbc9948cc65ff50aba5d2dacabec6be0d014e3167f094d967a554d0944e"
    else
      url "https://github.com/malon64/floe/releases/download/v0.5.3/floe-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "559311910ee51a651fb69c7394168f36443e0ba53bda8b1d906d46b072198eed"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.5.3/floe-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e057f6e4c35967528cbe6fce599ee808dd0f66077ad160f1e83c488769f6dcb"
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
