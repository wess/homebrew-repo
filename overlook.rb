
class Overlook < Formula 
  version   "0.0.1"
  desc      ""
  homepage  ""
  url       "https://github.com/wess/overlook/archive/master.zip"

  def install 
    system "make release"

    bin.install "overlook"
  end
end