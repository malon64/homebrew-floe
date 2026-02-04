class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.1/floe-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "a40e814bc8851e95b027d979e0ce89ba91dc40ea6328c0eabedeb7e97b4e9769"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.1/floe-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "84174e32cd32f9412ba2cd65c35c9fbc09db76eb3621fd9556caad3c8f1de532"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.1/floe-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6876444dc023965641306171c9e6afa79287fa74fc7d5c89b169e088ddcfa704"
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
