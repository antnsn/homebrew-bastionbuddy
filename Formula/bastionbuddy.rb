class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v#{version}/bastionbuddy_#{version}_darwin_arm64.tar.gz"
      sha256 "" # You'll need to add the SHA256 of the release file
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v#{version}/bastionbuddy_#{version}_darwin_amd64.tar.gz"
      sha256 "" # You'll need to add the SHA256 of the release file
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v#{version}/bastionbuddy_#{version}_linux_arm64.tar.gz"
      sha256 "" # You'll need to add the SHA256 of the release file
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v#{version}/bastionbuddy_#{version}_linux_amd64.tar.gz"
      sha256 "" # You'll need to add the SHA256 of the release file
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
