class PaperlessonCli < Formula
  desc "K-12 True-Vector PDF Math Drills & Handwriting Ruling Spec CLI"
  homepage "https://paperlesson.com"
  url "https://github.com/AbigailDavised/homebrew-paperlesson/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "81504b2683f98512ff2ca56c3e02b69c2fe55c1a96f92e9ace06bfefda7f717e"
  license "MIT"

  depends_on "node"

  def install
    chmod 0755, "bin/paperlesson-cli"
    bin.install "bin/paperlesson-cli"
  end

  test do
    output = shell_output("#{bin}/paperlesson-cli --version")
    assert_match "1.0.0", output
  end
end
