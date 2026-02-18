class Brewkeeper < Formula
  desc "Clean terminal UI for safer Homebrew upgrades"
  homepage "https://github.com/Pallepadehat/brewkeeper"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.1.1/brewkeeper-darwin-arm64.tar.gz"
    sha256 "6cc8d90cd961feb5e16d50dd5431317806372b71c1b0f92a1980524198a992f9"
  end

  on_linux do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.1.1/brewkeeper-linux-x64.tar.gz"
    sha256 "43eade449bbec7124dca269ca123e90e59bd41ceddc88f0a25ca387e8a889784"
  end

  def install
    bin.install "brewkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brewkeeper --version")
  end
end
