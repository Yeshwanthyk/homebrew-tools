class Quickdiff < Formula
  desc "Fast, keyboard-driven terminal diff viewer for git and jj repositories"
  homepage "https://github.com/Yeshwanthyk/quickdiff"
  license "MIT"
  version "0.8.0"

  on_macos do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-aarch64-apple-darwin.tar.gz"
    sha256 "aa177bfeefdf033e14811d6fe55ee3895a249f61fe7ad76ab92257ba304d0aa8"
  end

  on_linux do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "46c9a60d5ac9ea0baa522d4494dea8d12c284c27dfc7824d31f64c582455f5fa"
  end

  def install
    bin.install "quickdiff"
  end

  test do
    system "#{bin}/quickdiff", "--version"
  end
end
