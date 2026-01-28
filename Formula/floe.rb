class Floe < Formula
  desc "YAML-driven technical ingestion tool"
  homepage "https://github.com/malon64/floe"
  version "0.1.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.1.5/floe-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "b4017f3607a799818a0b35faa2af497d75cef105c2657a4d52c0eac48416d548"
    else
      url "https://github.com/malon64/floe/releases/download/v0.1.5/floe-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "9fd8312890c10f3b40e6d92dcc9bd41705681a614d1439c92f0bc20374b8d1a5"
    end
  elsif OS.linux?
    url "https://github.com/malon64/floe/releases/download/v0.1.5/floe-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0287d73a077cbcf8b5dcb4cb51c3a0a2684b51841903795391e0a286764dfd1f"
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
