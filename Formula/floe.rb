class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.5.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.5.0/floe-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f4c2d2b6d609bd0607c82ad68c25fdf5baab12dff27aa2a3ee44e25f71efdee"
    else
      url "https://github.com/malon64/floe/releases/download/v0.5.0/floe-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "de9e9ecb44fa8a42047b9bb49a58a30c7988ded0f04739d377d3144fe37745f5"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.5.0/floe-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2179a0aa7f85c3389e0938188b5dc364b452b02cb4ec5783efa30e0b6b42295b"
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
