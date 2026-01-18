class Quickdiff < Formula
  desc "Fast, keyboard-driven terminal diff viewer for git and jj repositories"
  homepage "https://github.com/Yeshwanthyk/quickdiff"
  license "MIT"

  version "0.7.7"

  on_macos do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v0.7.7/quickdiff-aarch64-apple-darwin.tar.gz"
    sha256 "7cb7179d232dce3a84ffd5669cd6fad1115cf9510a7a0c870852234c7c1e37fe"
  end

  on_linux do
    url "https://github.com/Yeshwanthyk/quickdiff/releases/download/v0.7.7/quickdiff-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "03db3455c25bca3355c54cfe4da9284b7fc72d6dc5b2577fabb371710a492e3a"
  end

  def install
    bin.install "quickdiff"
  end

  test do
    system "#{bin}/quickdiff", "--version"
  end
end
