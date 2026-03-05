class Catmd < Formula
  desc "Cat-like CLI that renders Markdown with ANSI styling"
  homepage "https://github.com/schneidermayer/catmd"
  url "https://github.com/schneidermayer/catmd/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "92a25726377fb3ad2f96faba46eae4e05da31a2713c247a5a68ad91abc541daa"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "catmd", shell_output("#{bin}/catmd --help")
  end
end
