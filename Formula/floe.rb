class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.2.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.2.1/floe-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "d4352aef03ddb44b431d4858543ab6dc8f27419ed4ef48bdbe0ffc999b5bd570"
    else
      url "https://github.com/malon64/floe/releases/download/v0.2.1/floe-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "96e0a01a7b7654807e836ffdfef0d5c04c5e6fd78cc8ec25094dfa670b9112da"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.2.1/floe-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef607cb3133369490193b276e9142a10d85a1167dfdd826d19f3517403ae0248"
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
