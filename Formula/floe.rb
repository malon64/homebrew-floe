class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.6/floe-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "ef47d407ed7641d87e969ecfb0397e4b7b80dbc14817ee9bbdd38153f96f9163"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.6/floe-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "418d734c16e68b75427b9d5888f7d2150a39253e148cabbc0d2f890bc81aeb7f"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.6/floe-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d6c07fc293a9a88877be79864211bea7740fe848a63aa72e8e05605a5ea533b5"
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
