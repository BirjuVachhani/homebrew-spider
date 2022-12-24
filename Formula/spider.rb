class Spider < Formula
  version ""
  desc "A small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-macos.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux?
    url "https://github.com/BirjuVachhani/spider/releases/download/#{version}/spider-#{version}-linux-amd64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "spider"
  end

  test do
    system "#{bin}/spider", "--help"
  end
end