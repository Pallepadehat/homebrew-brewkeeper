class Brewkeeper < Formula
  desc "Clean terminal UI for safer Homebrew upgrades"
  homepage "https://github.com/Pallepadehat/brewkeeper"
  version "0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.2.2/brewkeeper-darwin-arm64.tar.gz"
    sha256 "13e2476fb4d3a81d4346261e31bfdb8bf7a4a26708774344cc0c260b06582765"
  end

  on_linux do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.2.2/brewkeeper-linux-x64.tar.gz"
    sha256 "871ea2cb152b4d77b7c4bde5140f908ff8d1c561d335736b4d1d2e23a072e353"
  end

  def install
    bin.install "brewkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brewkeeper --version")
  end
end
