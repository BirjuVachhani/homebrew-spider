class Spider < Formula
  version "4.2.0"
  desc "A small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/BirjuVachhani/spider/archive/4.2.1.tar.gz"
    sha256 "ec4fa9770ba79994e5ec4a36ed80b4cfd8c05e40fd3370fd37175c80589cc4d5"
  elsif OS.linux?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-linux-amd64.tar.gz"
    sha256 "9cb08382c5d448ea2b556f6ac1852763a11c76953aa7d577806c06d42f783b6c"
  end

  def install
    bin.install "spider"
  end

  test do
    system "#{bin}/spider", "--help"
  end
end