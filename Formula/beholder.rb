class Beholder < Formula
  desc "CLI tool for D&D players"
  homepage "https://github.com/dhleong/beholder"
  url "https://github.com/dhleong/beholder/archive/066bb64a3bd111a5ce2d27719d2a66affebb7c70.tar.gz"
  sha256 "90047ebc15eabd83b53cd1d2d262bbaf5833c752da1ad1b140416c718c1828e8"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "beholder"
    bin.install "beholder"
  end

  test do
    system "#{bin}/beholder", "--version"
  end
end
