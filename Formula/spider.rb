class Spider < Formula
  version "4.2.1"
  desc "A small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/BirjuVachhani/spider/archive/4.2.2.tar.gz"
    sha256 "e8b728610d7bbcea020ea7e3d03aa3bad15390109fa4dc824139ecebfb4e1523"
  elsif OS.linux?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-linux-amd64.tar.gz"
    sha256 "2abc783b402689b63f796d40d7d5eec015ee223c0ef87cf1fa9a553a66daa99c"
  end

  def install
    bin.install "spider"
  end

  test do
    system "#{bin}/spider", "--help"
  end
end