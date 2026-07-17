class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-duckdb-v0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "e6273be984905557861cea957cd13d23e0fdd84b52334294607b5258003b0349"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-duckdb-v0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "3c7991f03a5f2d34ad40017a87ac6c2a2bf6d6a7a67d201540963c9d6833db84"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-duckdb-v0.6.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7bda80be76cbf33e1f8097614b333d346df22f492f6b3ed96b4ab9fba724042"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.9/floe-duckdb-v0.6.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8de6f2c1c683a97677542504436306f297281f376a81b18b64a29cec02771b5d"
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
