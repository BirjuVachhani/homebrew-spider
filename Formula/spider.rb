class Spider < Formula
  desc "small dart library to generate Assets dart code from assets folder."
  homepage "https://github.com/BirjuVachhani/spider"
  url "https://github.com/BirjuVachhani/spider/archive/4.0.0.tar.gz"
  sha256 "001468f43189bfcbcf78b2b3ca9e2739c3af8fe224777ec6272331e41fc23a40"
  license "Apache-2.0"
  
#   bottle :unneeded
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/main.dart", "-o", "spider"
    bin.install "spider"
  end
  
  test do
    system "#{bin}/spider", "--version"
    system "touch", "pubspec.yaml"
    system "#{bin}/spider", "create"
    raise 'test failed' unless File.exists? 'spider.yaml'
  end
end
