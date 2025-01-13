class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_darwin_arm64.zip"
      sha256 "17c9f80b1ae96b7afdb5ec66afb2a00e30c7bb7761d9290c5f0c3edc3f440956"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_darwin_amd64.zip"
      sha256 "afdd297025e9f4727b16bbe0bbc5bf38e77dc2e6f99e5838975d5fc360bc0854"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_linux_arm64.zip"
      sha256 "1d462a698c4fc54d41046f70ecb9212091da1003156f50a50fe9a92ac8a72795"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/#{version}/bastionbuddy_linux_amd64.zip"
      sha256 "5d31aa2783c0a69d7d0f724a65519ec55dc35dc3155db70a4d40a4adfd2ad881"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
