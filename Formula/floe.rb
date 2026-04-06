class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.3/floe-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "23ac0c6113fb03ab5e14d7fc98900f35bf361a9931fe599513497307f5f375e7"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.3/floe-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "a99930d84ca7d496e7bd302530f9c49cddec3aa953888485c308a6b3f9b1b46e"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.3/floe-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3f3a0d0be932585cce2d7d36e796132e38ed488438cfc7d9a242d6cbe8e7161a"
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
