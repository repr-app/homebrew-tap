class Repr < Formula
  desc "Privacy-first CLI that analyzes git repositories and generates developer profiles"
  homepage "https://repr.dev"
  version "0.2.8"
  license "MIT"

  on_macos do
    url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-macos.tar.gz"
    sha256 "39e505f53f0f42b634a6c7816c24b73ca7c526593d50034ac8e0d5243eca896f"
  end

  on_linux do
    url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-linux.tar.gz"
    sha256 "5257bec41a5e42ff919477281696f8aa4f2a14b401eb3d296917f388082d355a"
  end

  def install
    bin.install "repr"
  end

  test do
    system "#{bin}/repr", "--help"
    system "#{bin}/repr", "--version"
  end
end

