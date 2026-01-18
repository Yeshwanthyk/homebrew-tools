class Quickdiff < Formula
  desc "Fast, keyboard-driven terminal diff viewer for git and jj repositories"
  homepage "https://github.com/Yeshwanthyk/quickdiff"
  license "MIT"

  on_macos do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-aarch64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_ARM64_SHA256"
  end

  on_linux do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_LINUX_SHA256"
  end

  version "0.7.6"

  def install
    bin.install "quickdiff"
  end

  test do
    system "#{bin}/quickdiff", "--version"
  end
end
