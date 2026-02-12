class Brewkeeper < Formula
  desc "Clean terminal UI for safer Homebrew upgrades"
  homepage "https://github.com/Pallepadehat/brewkeeper"
  url "https://github.com/Pallepadehat/brewkeeper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "33e990b23438467f606ce7ac64ee7b4805048b9d93932f5f09ab42a9fa7006b9"
  license "MIT"

  depends_on "bun" => :build

  def install
    system "bun", "install", "--frozen-lockfile"
    system "bun", "build", "--compile", "--outfile", "brewkeeper", "src/index.tsx"
    bin.install "brewkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brewkeeper --version")
  end
end
