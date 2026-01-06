class Repr < Formula
  desc "Privacy-first CLI that analyzes git repositories and generates developer profiles"
  homepage "https://repr.dev"
  version "0.2.5"
  license "MIT"

  on_macos do
    url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-macos.tar.gz"
    sha256 "04eff1ac614b7f364e67dab2b8419166edfab1323b0476780988ae9d52196e7d"
  end

  on_linux do
    url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-linux.tar.gz"
    sha256 "b14fbba56ee90dbec1e6fa3875f9f42a0871ecdfb62eddd8f56a36e9ebf2d13b"
  end

  def install
    bin.install "repr"
  end

  test do
    system "#{bin}/repr", "--help"
    system "#{bin}/repr", "--version"
  end
end

