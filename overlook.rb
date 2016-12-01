# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Overlook < Formula
  desc      "File monitoring"
  homepage  "http://github.com/wess/overlook"
  url       "https://github.com/wess/overlook/archive/0.1.4.tar.gz"
  version   "0.1.4"
  sha256    "e4510709b2f0c800a40dc5654bb30b05915aed0b73aa0ada021d878977be603e"
  head      "https://github.com/wess/overlook.git"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end
