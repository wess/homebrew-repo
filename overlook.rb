
class Overlook < Formula 
  version   "0.0.1"
  desc      ""
  homepage  ""
  url       "https://github.com/wess/overlook/archive/master.zip"

  def install 
    system "swift build -c release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end