class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.4.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.4.3/floe-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "148211d4801ab666aa705a9745c60b1e34551a7939226bc0900a3fae3ae0bb01"
    else
      url "https://github.com/malon64/floe/releases/download/v0.4.3/floe-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "0d0963b30ef4b2ea4b9105280bb88c60d6ac340b9a50ed01be04cfd657ac35e6"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.4.3/floe-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "34c4637b1db4404c40502fc24933ed227158275ef8a6f78c94058c5419099063"
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
