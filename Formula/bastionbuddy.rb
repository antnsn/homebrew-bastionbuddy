class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "35667dd8e9baaf0ccfae4ae08b1a734b289d7369c8d65c048f077666ef13482b"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "369b7f3542e307045d8f4c2072df46239dc208846cf40e664e3d12f746d6923b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_arm64.tar.gz"
      sha256 "55d756e52e4713255d0032f628c86b474d753c3beaa5e1103adf87aba73e235b"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_amd64.tar.gz"
      sha256 "742e000bd9ede0a85ebbe9bf3c5c05b556bc2cfa615ed9526b0095141ec4c945"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
