class Brewkeeper < Formula
  desc "Clean terminal UI for safer Homebrew upgrades"
  homepage "https://github.com/Pallepadehat/brewkeeper"
  url "https://github.com/Pallepadehat/brewkeeper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a0ade1d2578180ca7d067f009f9718519df52115315a748034a4f27ccccb2289"
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
