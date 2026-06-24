# typed: false
# frozen_string_literal: true

class Atom < Formula
  desc "Anything to Markdown"
  homepage "https://github.com/izuno4t/atom"
  url "https://github.com/izuno4t/atom/releases/download/v0.1.2/atom-0.1.2-source.tar.gz"
  sha256 "c2f5feaffe36e021e34b817c35667b0f32e5d41d61938783bff81a88775841b6"
  license "MIT"
  version "0.1.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--bin", "atom", "--root", prefix
    pkgshare.install "config.toml.example"
  end

  test do
    assert_match "atom 0.1.2", shell_output("#{bin}/atom --version")
    assert_path_exists pkgshare/"config.toml.example"
  end
end
