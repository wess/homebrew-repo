# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Overlook < Formula
  desc ""
  homepage ""
  url "https://github.com/wess/overlook/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "c752b089a5bbaf699ce622b6f702f73bc36eff9c8faf6be9c411f09e075eaf11"

  def install
    system "swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end
