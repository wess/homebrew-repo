# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Overlook < Formula
  desc      "File monitoring"
  homepage  "http://github.com/wess/overlook"
  url       "https://github.com/wess/overlook/archive/0.1.0.tar.gz"
  version   "0.1.0"
  sha256    "842e96abf699af3722b14701ec40ae9d4790e1e5a31418bf65249f68ebe83f61"
  head      "https://github.com/wess/overlook.git"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end
