class Floe < Formula
  GITHUB_REPO = "malon64/floe"

  desc "Floe CLI"
  homepage "https://github.com/#{GITHUB_REPO}"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/#{GITHUB_REPO}/releases/download/v#{version}/floe-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_ME_SHA256_X86_64_APPLE_DARWIN"
    end

    on_arm do
      url "https://github.com/#{GITHUB_REPO}/releases/download/v#{version}/floe-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_ME_SHA256_AARCH64_APPLE_DARWIN"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/#{GITHUB_REPO}/releases/download/v#{version}/floe-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_ME_SHA256_X86_64_UNKNOWN_LINUX_GNU"
    end
  end

  def install
    bin.install "floe"
  end

  test do
    system "#{bin}/floe", "--version"
  end
end
