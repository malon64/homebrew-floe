class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.4/floe-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "3f5eca0747edb18065e8eb26eaffb2a79e89f799819c749f2a0852a16c5db31a"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.4/floe-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "8fabfbb107c2bfc78c919aa4ea1008d021a146e467002b7ea99c991539ac9216"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.4/floe-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1b228d4dbc5ebd41d851d1800178a9136040b457bcc2531c048ecabbe3459c0a"
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
