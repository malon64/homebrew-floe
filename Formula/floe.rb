class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-v0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "debca5143fd3e39bd6762de6c792a90c39fec5682ed86adcb17299dbcfd248d9"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-v0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "a9afb71faede8a13c7e33c5c41e81ffa85e2cb95fd8eee48068603ebf051581c"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-v0.6.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18a94e9e8379c551f4124498485ee95defe5e5b988a257d348ecb77b8c544597"
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
