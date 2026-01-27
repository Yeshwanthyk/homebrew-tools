class Quickdiff < Formula
  desc "Fast, keyboard-driven terminal diff viewer for git and jj repositories"
  homepage "https://github.com/Yeshwanthyk/quickdiff"
  license "MIT"
  version "0.7.8"

  on_macos do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-aarch64-apple-darwin.tar.gz"
    sha256 "7f8c4a11d5591bbf4bf14a88bcd051e3dff6719264c68ff62ed6dc33a73f12f5"
  end

  on_linux do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v#{version}/quickdiff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "817a483061af4067c569a4594692882c7916dfbf86e92fb0bc2cb8634c505b28"
  end

  def install
    bin.install "quickdiff"
  end

  test do
    system "#{bin}/quickdiff", "--version"
  end
end
