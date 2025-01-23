class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.4/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "f815d9a170659262beda7da4574a3000d221ea0b053cbd4db3b7b238380f96f7"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.4/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "ba4310fc8a0c2e1e4c27580ca6a8eff895e722897dcac69c668d1c089a20b8f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.4/bastionbuddy_linux_arm64.tar.gz"
      sha256 "3880747ccd5c5a435eb1fb1a14d69c084f0b38661caf74412124850d72fa3db9"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.4/bastionbuddy_linux_amd64.tar.gz"
      sha256 "fc7c24bf3220d2463c554627dc5d9d0e35bd170db4cc8f0d3fe582333f27603d"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
