class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.9/floe-v0.3.9-aarch64-apple-darwin.tar.gz"
      sha256 "38fda06170df0844c05268d0e7b978a23d43aafd7bf644f281d4f76c53426570"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.9/floe-v0.3.9-x86_64-apple-darwin.tar.gz"
      sha256 "c3aedb6ffbac2b184c628623f74a8cca94015d8828b9f6dfebf18c337137d907"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.9/floe-v0.3.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "002e92de8ec43a4ffc7315c69c750b369c5c32008a12cf0ad7b1122b2bea3dcf"
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
