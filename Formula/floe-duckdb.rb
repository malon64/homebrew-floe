class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.11"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-duckdb-v0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "20a0c1849c2ae11ef3e7c47a45cd57046434c1ea8f89bf13bf11365566aff6b4"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-duckdb-v0.6.11-x86_64-apple-darwin.tar.gz"
      sha256 "0e9869ebbd58bba10b789bb392455c91c3d02f823c4d6169dbad2b70d8c562cb"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-duckdb-v0.6.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bbca2dacf9357b650af1532f2c3260f1716a5b4e4aa4f25c1e533ab6d5f5b2d0"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.11/floe-duckdb-v0.6.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba3fbea2955fb5cbbc82c67c4ab6ca957f0b99a37e0ffeb430e9ed5e584c2ecd"
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
