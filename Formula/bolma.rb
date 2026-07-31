class Bolma < Formula
  desc "CLI layout engine for .bolma files written in Rust"
  homepage "https://github.com/secondcoolestguy/bolma"
  url "https://github.com/secondcoolestguy/bolma/archive/refs/tags/v1.0.0pre.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Bolma CLI Tool", shell_output("#{bin}/bolma --help")
  end
end
