class Bastionbuddy < Formula
  desc "CLI tool for managing Azure Bastion connections"
  homepage "https://github.com/antnsn/BastionBuddy"
  version "v1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_arm64.tar.gz"
      sha256 "8e3c5960b3ccf3e6d5fe82fe059a04277409059647327b860d383a279d7abf5c"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_darwin_amd64.tar.gz"
      sha256 "4d55ac79228e11d8c0579a46f652854b00b683cf48000f8ea846a98944644253"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_arm64.tar.gz"
      sha256 "7d7ea47f43ef116bad8d9d284353b741165e38dc32260780ec8e0a719ecd6378"
    else
      url "https://github.com/antnsn/BastionBuddy/releases/download/v1.0.1/bastionbuddy_linux_amd64.tar.gz"
      sha256 "127517dedf2cf95f20ec1996ad84cf4b72f1abcb37cba74c97b404e1d059aafb"
    end
  end

  def install
    bin.install "bastionbuddy"
  end

  test do
    system "#{bin}/bastionbuddy", "--version"
  end
end
