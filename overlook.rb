
class Overlook < Formula 
  version   "0.0.1"
  desc      ""
  homepage  ""
  url       "https://github.com/wess/overlook/archive/master.tar.gz"
  sha256    "d4fbe3e667ddb0cc1f33b653c831b074e816b7cbf9886c1c61a7c965e1993566"

  def install 
    system "/usr/bin/env swift --configuration release"
    system "mv .build/release/overlook overlook"

    bin.install "overlook"
  end
end