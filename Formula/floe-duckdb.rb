class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-duckdb-v0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "33395080f1d64db534cfe73a17e8146c3975252178b5b6dd2eb2581aed80a64d"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-duckdb-v0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "66f932bfeb576fc7d8e7c5302183b84133b6c8621e9a3e24caa598e5a07b48f3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-duckdb-v0.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c512fabdde9d19b527e7d646d54d4875c88246385db3e445cfd62dfae0ea77b7"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.6/floe-duckdb-v0.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cee123f34be241f4c3bbfd2812a12699862aff0eaf29a3eb3538987245c09d73"
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
