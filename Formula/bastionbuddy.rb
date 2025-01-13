class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "b4f62e73e4896400b78b08e15c6251fcca5b5f032030fa338c02a68e1b3576fc"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "bd5be5536073b1040cb153d0ee7f00c8be6c4176e55ca4327d8b326905ced2ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_linux_arm64.tar.gz"
      sha256 "53f263ae4db3399ecaf6c7efb882291ab8d8e087790bfbc187ce05ac6a22ac47"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.0/bastionbuddy_linux_amd64.tar.gz"
      sha256 "e26a71feb8b493e49db7adf9d246b259684d7d6f85f7bae93ca25bcbee43a794"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
