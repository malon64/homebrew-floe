class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.11"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-v0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "bfb6da91b08ef0bdd3b9b84b22f7cf53cfccfc38bba1d7649ba9fef4e8ae690b"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-v0.6.11-x86_64-apple-darwin.tar.gz"
      sha256 "00adc41ea0b522ecac0374ba77a806dd938105d789dc6bf97b113d65a9871c81"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-v0.6.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5f1ec29898e362b3ec5ebf23f35f1f196ea1c8d35f402975b3325697a3c11d5"
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
