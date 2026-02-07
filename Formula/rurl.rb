class Rurl < Formula
  desc "Rust-based URL helper"
  homepage "https://github.com/izuno4t/rurl"
  url "https://github.com/izuno4t/rurl/releases/download/v1.0.1/rurl-1.0.1-aarch64-apple-darwin.tar.gz"
  sha256 "6d07eff57569823098022e060b15c341343f8a7d57b366f9621da2763feec938"
  license "MIT"
  version "1.0.1"

  on_intel do
    odie "rurl is not available for Intel macOS"
  end

  def install
    bin.install "rurl"
  end

  test do
    system "#{bin}/rurl", "-v"
  end
end
