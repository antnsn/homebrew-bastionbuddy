class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.3/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "2d6b19bcbfa92429b9ba745441fe81ce022a595aed6d495378cf28df35dba8c6"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.3/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "e6b8a2cb4fddac46474481853147ace8df94305c4b066346782ad0b6d2093dc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.3/bastionbuddy_linux_arm64.tar.gz"
      sha256 "a8c08982ef012fdbc6cc15b7f64fde5146a42fdba46d84239568c3e05f6e8a60"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.3/bastionbuddy_linux_amd64.tar.gz"
      sha256 "a8b2de7a2785b03954b6fee54395fbca26fb58d6b51b0a2f8bb84760f17b4e6e"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
