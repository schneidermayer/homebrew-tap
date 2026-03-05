class Catmd < Formula
  desc "Cat-like CLI that renders Markdown with ANSI styling"
  homepage "https://github.com/schneidermayer/catmd"
  url "https://github.com/schneidermayer/catmd/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8ecd03c39cd0a53b134d914223e090fe89dd08da0145a42925b738dd22379f00"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "catmd", shell_output("#{bin}/catmd --help")
  end
end
