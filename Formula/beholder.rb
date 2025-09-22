class Beholder < Formula
  desc "CLI tool for D&D players"
  homepage "https://github.com/dhleong/beholder"
  url "https://github.com/dhleong/beholder/archive/1.8.1.tar.gz"
  sha256 "-172dc0816d733ec2a2910af62e0846e993fbc40c01a28ae4a510af699881ba90"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "beholder"
    bin.install "beholder"
  end

  test do
    system "#{bin}/beholder", "--version"
  end
end
