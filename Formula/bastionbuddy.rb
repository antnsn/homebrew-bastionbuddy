class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "aff5581ecbe18bbba842fe3caedbed49fe6646c2986ac999dad303a6cd4aebb6"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "9941e6df05a0a4c3bc55a2e41e3b88aed398545befbdc8ce7914a0312c966c13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_arm64.tar.gz"
      sha256 "6700c8d29c071cc280731793b7696eb61536f16570322d33a195a9eb91f785c4"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_amd64.tar.gz"
      sha256 "a5d96b4cd5daa4700a8a1cda1ac9672efe0790e736149cea9bc27cab65c0b0d2"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
