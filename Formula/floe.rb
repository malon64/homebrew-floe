class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-v0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "6b2d9402f35b7b2fe8df63cf6cf79f63dae6a12d264977749dcfb683938469f8"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-v0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "92f415a692fba9a003d6b00205f5558b883468a2604c75e57182217a47244edf"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-v0.6.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3bcaadaae320ac438ab00fbdf1d17e574860f1c438cb44cdddd2b5ef40f445d0"
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
