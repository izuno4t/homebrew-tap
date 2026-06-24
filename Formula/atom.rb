# typed: false
# frozen_string_literal: true

class Atom < Formula
  desc "Anything to Markdown"
  homepage "https://github.com/izuno4t/atom"
  url "https://github.com/izuno4t/atom/releases/download/v0.1.1/atom-0.1.1-source.tar.gz"
  sha256 "785fdee4b561e5e002627cae07a6c2166dc6a911701504dd7f542bb165a2dbdb"
  license "MIT"
  version "0.1.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--bin", "atom", "--root", prefix
    pkgshare.install "config.toml.example"
  end

  test do
    assert_match "atom 0.1.1", shell_output("#{bin}/atom --version")
    assert_path_exists pkgshare/"config.toml.example"
  end
end
