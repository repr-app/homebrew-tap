class Repr < Formula
  desc "Privacy-first CLI that analyzes git repositories and generates developer profiles"
  homepage "https://repr.dev"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM64_SHA256"
    else
      url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/repr-app/cli/releases/download/v#{version}/repr-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64_SHA256"
    end
  end

  def install
    bin.install "repr"
  end

  test do
    system "#{bin}/repr", "--help"
    system "#{bin}/repr", "--version"
  end
end

