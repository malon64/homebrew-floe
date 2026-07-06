class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-duckdb-v0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "2a2ed46c7477dbf4bc0bc6805607bc4c40b5e2098ac6fcb947e7268d8c882dea"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-duckdb-v0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "e659b6f4d46e3546c94a78ec003bb8867b08c3d4d2b6d59684ded97feb9530f2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-duckdb-v0.6.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa9bdfdc35e0d4c4d6bd86425c700ad1e04f5de15e4801354709c4e11c9511e2"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.7/floe-duckdb-v0.6.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6fe13dbb9561a791b0d0391503df8c4381262028221422d65ba28d8ded3f069"
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
