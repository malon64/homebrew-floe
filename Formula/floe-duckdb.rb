class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-duckdb-v0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "78bc63e7ad192f22184bfcc04394e34a1e17247ea496647b82049961538eeabb"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-duckdb-v0.6.8-x86_64-apple-darwin.tar.gz"
      sha256 "c29e571eefb7f7cb851a6fd45af2e87ec4728a058ed5e40135698e9804837d95"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-duckdb-v0.6.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1540b95ee3056b5911128c499b1feb4b3fcc34daed103532db87bd4562bc358c"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.8/floe-duckdb-v0.6.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d9a7d2013d38def67c5c8c256b03500428d2809a47d2ba135d4168be666cff5"
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
