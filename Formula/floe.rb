class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.0/floe-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8b431610c1d3c47b83cfb1a878e625913398711f743e82186499a778b48bc2c3"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.0/floe-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f08460707cfd3eaf633995fd6a55665906cc6e1adcf84ca32796e80433f4b6ac"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.0/floe-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dfa63bcfaefa47ac36444a43063fc65c9b097b6af0cf98bb061202253a6a0610"
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
