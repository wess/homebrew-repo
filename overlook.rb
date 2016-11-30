# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Overlook < Formula
  desc      "File monitoring"
  homepage  "http://github.com/wess/overlook"
  url       "https://github.com/wess/overlook/archive/0.1.3.tar.gz"
  version   "0.1.3"
  sha256    "7bcc7193296db26c4ea9153c3c73eafd1c750618a2b0470b6ffec660b80c1aa0"
  head      "https://github.com/wess/overlook.git"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end
