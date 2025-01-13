class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_darwin_arm64.zip"
      sha256 "8cd3d8a2b77d72207bf8a2745e5368a7790ad9e6c4ac9f0c06a73993c0391fe5"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_darwin_amd64.zip"
      sha256 "1d6851ece77c48bfd0f2c8747b1e4ebf8c9b312c67b3d8a1548dec441c248529"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_linux_arm64.zip"
      sha256 "be752755502634e495527fd1eac207ae11280a37fa2c7afe7218fc98169e4391"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_linux_amd64.zip"
      sha256 "3954dbb1a02585194d64209f058c0f903e8f113fb9101b2dc2186d495c06f62f"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
