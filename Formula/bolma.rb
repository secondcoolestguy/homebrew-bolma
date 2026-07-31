class Bolma < Formula
  desc "CLI layout engine for .bolma files written in Rust"
  homepage "https://github.com/secondcoolestguy/bolma"
  url "https://github.com/secondcoolestguy/bolma/archive/refs/tags/0.2.0.tar.gz"
  sha256 "638231aec96437e2717d23b5793472384c636eff6288644e5b0785ef8cc41d74"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Bolma CLI Tool", shell_output("#{bin}/bolma --help")
  end
end
