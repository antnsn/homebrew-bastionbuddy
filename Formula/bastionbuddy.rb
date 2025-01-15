class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.2/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "2bc14fa9c31366490c2a15ae3ad1a250beb37342c94305b099019295f25b5b03"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.2/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "5fd618dcc7572f36ae7060773c1521fc6c79f82c92d46002130ed6929a5ec30e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.2/bastionbuddy_linux_arm64.tar.gz"
      sha256 "4f80faa7ff36c6abb428e4e5391353564237a3502407a4a58c28efe4485066d4"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.2/bastionbuddy_linux_amd64.tar.gz"
      sha256 "649986448f12a6000bd0561e696dbed93e44ed7d1bbcc4788044fa2408322b42"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
