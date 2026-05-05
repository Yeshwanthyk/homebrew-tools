class Quickdiff < Formula
  desc "Fast, keyboard-driven terminal diff viewer for git and jj repositories"
  homepage "https://github.com/Yeshwanthyk/quickdiff"
  license "MIT"
  version "0.8.1"

  on_macos do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-aarch64-apple-darwin.tar.gz"
    sha256 "1aaae9abd6cf8d8deb7bf3c1b0b5d4a290e15daccde5093efc0e8c5a7dbc4120"
  end

  on_linux do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4361112092c40432f82d655d1e100f9ea9639e8f7531d69cb5102844a1b2286"
  end

  def install
    bin.install "quickdiff"
  end

  test do
    system "#{bin}/quickdiff", "--version"
  end
end
