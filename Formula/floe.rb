class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.5/floe-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "bb3edd038b73cc75924dfa1bfafd58f1d27deb9a7bd7446f022ab46e0de4283a"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.5/floe-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "4a2b00ba1711759d884bbd1476aef6ecac42a7ee2b1ca5ba1b8c6a8bfeb8b553"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.5/floe-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aae1093ffd3e34d66fc1bc585d079d1288504378f47078fecb9fa7ab0cd2db11"
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
