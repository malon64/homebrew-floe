class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.4/floe-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "13c5cd4847ce23a12308d5684e4f62baf6e381ae2a6bddd882467338730a92b8"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.4/floe-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "be75d193e5fa652a7b861afc271593e76795db04b896271a47a6abe9530a3032"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.4/floe-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d2ec7097dac2a1ebfea74b5bc0eaf490e511b681f97be0d8b89ca22f0ad83fa6"
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
