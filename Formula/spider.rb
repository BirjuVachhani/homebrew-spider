class Spider < Formula
  version "4.2.1"
  desc "A small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-macos.tar.gz"
    sha256 "62bbf050000cfd5feee288b6503537fbc1af389570cde6ba86fe59bd654de332"
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