require "formula"

class DklabRealsync < Formula
  url "https://github.com/DmitryKoterov/dklab_realsync/archive/master.tar.gz"
  homepage "https://github.com/DmitryKoterov/dklab_realsync"
  version "1.0"
  sha1 "ed63ad8221c4504ecfd9440bc2afc91ec4e1e1a6"

  def install
    inreplace "realsync", "bin/darwin/notify", "notify"
    bin.install "realsync","bin/darwin/notify"
  end

end
