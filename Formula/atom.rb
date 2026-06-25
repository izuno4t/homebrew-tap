# typed: false
# frozen_string_literal: true

class Atom < Formula
  desc "Anything to Markdown"
  homepage "https://github.com/izuno4t/atom"
  license "MIT"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/izuno4t/atom/releases/download/v1.0.1/atom-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "b337db40d0bd4323939e549a67da017f99db96edba8e6e28655fa0440198fe5b"
    end
    on_intel do
      odie "atom is not available for Intel macOS"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/izuno4t/atom/releases/download/v1.0.1/atom-1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79081a6886415d2d815cd4b9b344e39966ef2791c41b6fc619d071a2fb24c071"
    end
  end

  def install
    bin.install "atom"
    pkgshare.install "config.toml.example"
  end

  test do
    assert_match "atom 1.0.1", shell_output("#{bin}/atom --version")
    assert_path_exists pkgshare/"config.toml.example"
  end
end
