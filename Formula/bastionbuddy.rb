class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_#{version}_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_#{version}_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_#{version}_linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_#{version}_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
