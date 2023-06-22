class Spider < Formula
  version "4.2.2"
  desc "A small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-macos.tar.gz"
    sha256 "42a6376f6dae40218db999d3b7d8f4dd2abcc2774b477a8320faea1559e8b78e"
  elsif OS.linux?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-linux-amd64.tar.gz"
    sha256 "b6e6d0ae92cd46fd579c37e23cd711b9c81ce012c6bd283b611d28d78f8f0b76"
  end

  def install
    bin.install "spider"
  end

  test do
    system "#{bin}/spider", "--help"
  end
end