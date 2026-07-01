class FloeDuckdb < Formula
  desc "YAML-driven ingestion tool — full build with DuckDB sink support"
  homepage "https://github.com/malon64/floe"
  version "0.6.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-duckdb-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "2ea7b86e427f3f44e08199700a682f935be8c1aec26feb1db6a90ba923c4f88f"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-duckdb-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "227cf33da8f8a8cc7079c2805549ab97075d96e5affe3ab8190ac8bc9cd9b650"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-duckdb-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9e21ab53174a400ada8b591b1e50469713dd6278e1cf6bdfd0358419dfb2da3"
    else
      url "https://github.com/malon64/floe/releases/download/v0.6.4/floe-duckdb-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0524c1c5613cc07475ee4160f6ca94cf4220e3d27000d0758c48078d176df39"
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
