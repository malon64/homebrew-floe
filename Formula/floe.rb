class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-v0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "a93aa6288de97d6c22ba58343bbc2d66886772f21a9c40d062d45b71f3bb80d7"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-v0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "01e7cae53a85a09e4c1b3c7279fa1055c666380b381f431a805f44798f381fb2"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-v0.6.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "35b17b81c0eba705d0982874f2ce697ca56fddd226e30e89498c30afcedb011b"
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
