class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.6/floe-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "5de8a3e34a880c4df6bd0a2147fa5db632472e2bb58962c4877decd7287c2de1"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.6/floe-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "e35ca603bce4993a97b4aa855d9a825a256708878be441cf77ff034ea8b6392b"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.6/floe-v0.2.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f88966486ef742f161b71591530aa493c2e0bfca220b7baee6ebdc9cc87b8bca"
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
