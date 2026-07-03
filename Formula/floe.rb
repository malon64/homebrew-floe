class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-v0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "87e6b19516fd207793a802c08603ce2a1e13ac1be7c5645d3476629eb3586209"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-v0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "8847991485059c462fcebd499aaef7090a9132aef65aebec245072df07cfed95"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-v0.6.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4c1b2ab03a40f4f15facb50bd4493e5526a3cd492089d2a5e0b7da75e9db993f"
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
