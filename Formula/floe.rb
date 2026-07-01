class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.6.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "a8f84ce1770ad46f688a0e8377a389ae9f6a3226854cb34d94b5ce0afe466708"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "a501aea693e053dbe5499726d90a4c26b38581f263542be931482b25a063c3c6"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9d324c8f9ab8a7e1dd2c25a3fc5564c3939bc7a1c1a68dad5a7de8255dbe9a75"
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
