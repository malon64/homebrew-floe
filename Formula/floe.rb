class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.4/floe-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "e61c2a33fcb76d56d5baa1c7c2ed9ef268698ac401845180ce3b66a643ddb544"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.4/floe-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "0ad3b34510773e226e7b5ea26979e2d8d3cfe91f952b34ec3c73446829ef1ec9"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.4/floe-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9eec78d7555d157a13f9112385f06ab16af7f1ac4ed4d7c75c7f751f52aa4d6e"
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
