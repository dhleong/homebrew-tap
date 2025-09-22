class Beholder < Formula
  desc "CLI tool for D&D players"
  homepage "https://github.com/dhleong/beholder"
  url "https://github.com/dhleong/beholder/archive/1.8.1.tar.gz"
  sha256 "e8d23f7e928cc13d5d6ef509d1f7b9166c043bf3fe5d751b5aef5096677e4570"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "beholder"
    bin.install "beholder"
  end

  test do
    system "#{bin}/beholder", "--version"
  end
end
