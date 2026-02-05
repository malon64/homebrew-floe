class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.2/floe-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "c528a85ab256ddd40f21154bf1c8e5c288e085cd5be2a0d838cfa52e24e415ba"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.2/floe-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "fd131ea8ea51d94707decdd21894fa99d31a48686826de08e5b26cfadb6aac12"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.2/floe-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ffb9e304ff2d1cd32e3b01ff40caed33fccb870b9fed549807472e038e1f4be9"
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
