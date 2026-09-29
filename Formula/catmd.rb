class Catmd < Formula
  desc "Cat-like CLI that renders Markdown with ANSI styling"
  homepage "https://github.com/schneidermayer/catmd"
  url "https://github.com/schneidermayer/catmd/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "1407b8406ab419b88448856af4d9f3a88a9f21527d6764b4e901a96bfea45d6c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "catmd", shell_output("#{bin}/catmd --help")
  end
end
