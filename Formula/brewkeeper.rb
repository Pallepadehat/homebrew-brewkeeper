class Brewkeeper < Formula
  desc "Clean terminal UI for safer Homebrew upgrades"
  homepage "https://github.com/Pallepadehat/brewkeeper"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.1.0/brewkeeper-darwin-arm64.tar.gz"
    sha256 "92ce522357340b4d107018102b700f7c222f06fc9c7e298f71dcd3abed563e58"
  end

  on_linux do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.1.0/brewkeeper-linux-x64.tar.gz"
    sha256 "6db6d2a882669dbfbad28fae52541fbfd11a9cc28d9c2ce3031c467c2347ea13"
  end

  def install
    bin.install "brewkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brewkeeper --version")
  end
end
