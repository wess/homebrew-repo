# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Overlook < Formula
  desc      "File monitoring"
  homepage  "http://github.com/wess/overlook"
  url       "https://github.com/wess/overlook/archive/0.0.1.tar.gz"
  version   "0.0.1"
  sha256    "3354e4f58ed404e09a462da02c269a46762a7ed62eceeaac7501c6ea63482571"
  head      "https://github.com/wess/overlook.git"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end
