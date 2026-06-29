class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-duckdb-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "bf6a2a4a788fe8e72d234ba767048782b806af74a5dbc0a6dea8b22d61166713"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-duckdb-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "e54d9d74be315277595ae72ecd88ec9757dd9ce1a51c6c212e8d214757bf3cbd"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-duckdb-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a25d1abc46c31da953b833ad39fe40c390721f15303b10594349d0390ade8239"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.3/floe-duckdb-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1379294c577c5979d98994db27a80362800e4960de2a9052413f7c170c8d886"
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
