class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "234fcbdee674b3bd43dad241ff7b83dd1bdb71451bbc6248f0458c99b210a931"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "8037aefc1440904364a41eaa06e1c5a9c9ed7932f784a5cda9d27c1d7d52c580"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_arm64.tar.gz"
      sha256 "e6aa17f082ec1e1637edf5f22ded8f9ebc0089249245aaf50d6cf4bd1d9de5d8"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_amd64.tar.gz"
      sha256 "8998fd1fab337c7d25af8b4d937e79ea0a39a30d8741e98d9dcf837240e0fb32"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
