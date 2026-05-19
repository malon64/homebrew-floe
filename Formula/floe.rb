class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.1/floe-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "d45eb740d34e9c3d7938a0506656844eda31017af536df47fee5b3d907f31f42"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.1/floe-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "9ed9df5da5edb0c6167196d31440aa9c544220bf02cea4250ac3e8c5f35a9b1d"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.1/floe-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4874080ed193e75c2b59872dce1dd169748d98dd204504740f8ef217862141f5"
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
