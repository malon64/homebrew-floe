class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.3.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.3.2/floe-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "446cc3aab8df3296816c4b02ab8c630e78d88b43e26414c195ec2d14f59cc7f8"
    else
      url "https://github.com/malon64/floe/releases/download/v0.3.2/floe-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "e483a8d6f1f369f917f395701259be605821bcbf164e51a488614a74aa1d9f34"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.3.2/floe-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bc99f18a32ad0a4b1a69c1cb7267864dc0c265a6678db4ebcdc8c6cac22e4d9c"
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
