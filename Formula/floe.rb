class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.3/floe-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "f52808a411f3126b8df0022a270fc62864651941529eeb48295fde7e9690623d"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.3/floe-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "c092bac3203eb8e4fc8032e671058a04bbf1f7951153348a5876dcd88a3bc097"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.3/floe-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bdd385570716ee3faba20bcda7831be7d8e32aa930081fc019ddea848fc78791"
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
