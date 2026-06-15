class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.5.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-duckdb-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "cb2b5ac78162428d6e4e4d61f8c9da4a98798dd82ccbdcc300e746e0307183a1"
    else
      url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-duckdb-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "261ac3bb915b3685a421b584bb7ddc1182cf52107b9f93c1bfe8a659caf9738d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-duckdb-v0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43f26099554c0418b92ccdf6d049caa5a241ee6a6108cb38ea70bda36e539421"
    else
      url "https://github.com/malon64/floe/releases/download/v0.5.6/floe-duckdb-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35c470f59e109b8881e1d1179742562f2a7a9f0c81907882785cdc7e182b0f56"
    end
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "floe-duckdb"
  end

  test do
    system "#{bin}/floe-duckdb", "--help"
  end
end
