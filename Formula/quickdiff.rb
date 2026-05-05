class Quickdiff < Formula
  desc "Fast, keyboard-driven terminal diff viewer for git and jj repositories"
  homepage "https://github.com/Yeshwanthyk/quickdiff"
  license "MIT"
  version "0.8.2"

  on_macos do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-aarch64-apple-darwin.tar.gz"
    sha256 "ecf15a68659a859dc9e9efa31ab9405ecb20a199bb08e3556ea574d69350d123"
  end

  on_linux do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0b679c2d4b94858ec8084e7bf33f317c48a6e33b5fdff0bd2e39b7021f4d37f7"
  end

  def install
    bin.install "quickdiff"
  end

  test do
    system "#{bin}/quickdiff", "--version"
  end
end
