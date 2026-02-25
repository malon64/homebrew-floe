class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.8/floe-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "8a396f46b84900faabd3091051d236701c228c3259ea0b165fb6dbd1d246110b"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.8/floe-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "bef02d19fb32f9ce44a7984446fc3319417f59022f730c797e54503cd3fbf8ed"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.8/floe-v0.2.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1bda2f9a82d13939788f1eb4d04332486d6faadce12a3e4b5920764dbdd3a074"
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
