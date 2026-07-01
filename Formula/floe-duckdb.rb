class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-duckdb-v0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "cb74390ccd235860760eb2f966c29782f71d6465064287d5e80ed565d58cb8c9"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-duckdb-v0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "ceb659b25f49ec4205a9de1b68d1a9d8dd75e6e58914e7ea04e233ee84262d15"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-duckdb-v0.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "598b594fc42c363aa9cc74e648b867a90c4b6d60544b05f76e7edfd366e81383"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.5/floe-duckdb-v0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1dbe3d15f0d695867ed2cc818afe7e42b6361495bde2a26f2fddc577ce10d82"
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
