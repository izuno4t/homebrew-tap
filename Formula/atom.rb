# typed: false
# frozen_string_literal: true

class Atom < Formula
  desc "Anything to Markdown"
  homepage "https://github.com/izuno4t/atom"
  url "https://github.com/izuno4t/atom/releases/download/v1.0.0/atom-1.0.0-source.tar.gz"
  sha256 "7b67139fb2d80c7c7ebda92f4aa8d7f3c0b3826551e7b400a7658a2f29c50e19"
  license "MIT"
  version "1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--bin", "atom", "--root", prefix
    pkgshare.install "config.toml.example"
  end

  test do
    assert_match "atom 1.0.0", shell_output("#{bin}/atom --version")
    assert_path_exists pkgshare/"config.toml.example"
  end
end
