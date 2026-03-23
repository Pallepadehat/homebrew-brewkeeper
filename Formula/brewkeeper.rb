class Brewkeeper < Formula
  desc "Clean terminal UI for safer Homebrew upgrades"
  homepage "https://github.com/Pallepadehat/brewkeeper"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.2.1/brewkeeper-darwin-arm64.tar.gz"
    sha256 "97819ce19f94d590f3207652b2e1053e209b5e298db8428d62409ce8290f8caa"
  end

  on_linux do
    url "https://github.com/Pallepadehat/brewkeeper/releases/download/v0.2.1/brewkeeper-linux-x64.tar.gz"
    sha256 "e4f6539cc9aee0ac01451dbc59905b24f30a2ec1a3831acdbd19bef581dc2e26"
  end

  def install
    bin.install "brewkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brewkeeper --version")
  end
end
