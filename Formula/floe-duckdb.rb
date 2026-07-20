class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.10"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-duckdb-v0.6.10-aarch64-apple-darwin.tar.gz"
      sha256 "6348108f8950bc9e1f29a36485ce19a4e83bbadf44a99c3e94c51059551fd0e7"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-duckdb-v0.6.10-x86_64-apple-darwin.tar.gz"
      sha256 "d8598c36c8fcb9189f97b3b99bcade1df64f1ff8af2598c082524864978bcd89"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-duckdb-v0.6.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36f5cbc39610d4141cfa9d4224ba3b3edae5c7b54291c2dfaec66ee3c1f142f7"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.10/floe-duckdb-v0.6.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f67bf73bb2956c12f875554db9d51425fd9d9c0c9ba5497598f67a9686794e32"
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
