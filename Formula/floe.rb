class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.10"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.10/floe-v0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "80a4dd35ac556b01c205f3da6bf16987a1483363cbe68cd5f31fc449a22b02a4"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.10/floe-v0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "d95798ab3f39314f36d0bd3188f16dda1999f8e79e13c722b07a80eaaf58c346"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.10/floe-v0.3.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8fd2a09c3efbd17b953acb5bbbd6a097d9222df0b4c10bf1d52eb5725c4f1ccd"
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
