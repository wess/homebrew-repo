# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Overlook < Formula
  desc      "File monitoring"
  homepage  "http://github.com/wess/overlook"
  url       "https://github.com/wess/overlook/archive/0.1.1.tar.gz"
  version   "0.1.1"
  sha256    "ef05e9a1db8a252bb1f4b34dc32be4d642483180e4bb392af67685581700e186"
  head      "https://github.com/wess/overlook.git"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end
