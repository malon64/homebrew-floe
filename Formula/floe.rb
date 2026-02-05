class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.2/floe-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "adf2928a7c718eff4b36d900286bbd47198adf5c91a7f0ddeac7c2165396f512"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.2/floe-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "f05f5ccb8ca8f6dbb4231608a91b110249deefab1e54cac03b426c5fe5d29f99"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.2/floe-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "872edd37b434287368677df87d0ebcfc481a9a3a049d877deea3be6e432306dc"
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
