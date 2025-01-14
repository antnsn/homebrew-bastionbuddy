class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "3475d37c70fbe39067cf647e4f566e45fe346e74b370780b6c10fcbfc9c3976a"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "d28637aef559f8de8cc6cb0c0a63a44b0609ebb1b2877633ef308425d57695b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_arm64.tar.gz"
      sha256 "6a97259bd71dba1c809ff2717b9474b406cb2acceb1ab7b08860bb1514d800b6"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_amd64.tar.gz"
      sha256 "67b95e4979e78c2b84b4f8eda62028f52018d21185d03c8f6cb3f4e9aafa18d0"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
