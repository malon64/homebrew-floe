class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.3/floe-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "864cb5bce79ee547e18c5bcf3c59e69e0cc6ae2b4680c56b10afc3708b751a6b"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.3/floe-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "94de94d4a54e08bbc6552c25926730f7a3cd8d7c8d91381e2a97310a1896d355"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.3/floe-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6d02c062488fe97752c1dc9970e5e1adca8a550219ea58023c3b91cdd202cbc2"
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
