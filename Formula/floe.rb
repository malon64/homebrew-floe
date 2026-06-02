class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.6/floe-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "e347c18781bab80350377c7a14df19fc7063476babe8fee51612e4b9149222e2"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.6/floe-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "18f055e8c7395dba70f9fb0134d509a3f78e84809fd7d0770cb3314f847112e5"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.6/floe-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "82b1b73c06088b2219b55f2d298dea3d0fb47104c69fda6cc509fcbeeddabd30"
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
