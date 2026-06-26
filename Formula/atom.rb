# typed: false
# frozen_string_literal: true

class Atom < Formula
  desc "Anything to Markdown"
  homepage "https://github.com/izuno4t/atom"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/izuno4t/atom/releases/download/v1.1.0/atom-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f1991d7806ad896509215085f65ec0172a2e4a6f11a9a73962dbd822c1b19069"
    end
    on_intel do
      odie "atom is not available for Intel macOS"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/izuno4t/atom/releases/download/v1.1.0/atom-1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5104c54ebe056cc85bafe2971fc57391047e73d2daa6733a8b366a821373e17"
    end
  end

  def install
    bin.install "atom"
    pkgshare.install "config.toml.example"
  end

  test do
    assert_match "atom 1.1.0", shell_output("#{bin}/atom --version")
    assert_path_exists pkgshare/"config.toml.example"
  end
end
