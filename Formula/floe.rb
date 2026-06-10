class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.5.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.5.4/floe-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "2bc48a92f090def287ca73136e59fb9a3b18b6b1366240d23ed8184c6597e07b"
    else
      url "https://github.com/malon64/floe/releases/download/v0.5.4/floe-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "e0d9a9e9247de59bc532d974858d495030c7d7e59bbe26198249b2b564c4eb53"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.5.4/floe-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e8e2bf711304062ca548ebbff316474d41f6bb1b0e7ee85b69c4f1e227bb0b5b"
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
