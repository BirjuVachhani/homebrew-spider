class Spider < Formula
  version "4.1.0"
  desc "A small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-macos.tar.gz"
    sha256 "38fcf83dd99c02df2384b73a3c22dbbb4ff674ddd2f0b3eb1e77b4159cf542ab"
  elsif OS.linux?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-linux-amd64.tar.gz"
    sha256 "298767fd60285a73257e8396d42ea306b8db833b925236aa8d7ec43a58aaac5f"
  end

  def install
    bin.install "spider"
  end

  test do
    system "#{bin}/spider", "--help"
  end
end