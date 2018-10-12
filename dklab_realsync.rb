require "formula"

class DklabRealsync < Formula
  url "https://github.com/DmitryKoterov/dklab_realsync/archive/master.tar.gz"
  homepage "https://github.com/DmitryKoterov/dklab_realsync"
  version "1.0"
  sha256 "a5912dc5aeaa45d7256c1c4648d6e5e7e937bf64a041fd53dbd48b2c64b012f7"

  def install
    inreplace "realsync", "bin/darwin/notify", "notify"
    inreplace "realsync", "if (!-d $DIR_PRIVATE || !-f $FILE_CONFIG)", "if (!-f $FILE_CONFIG)"
    inreplace "realsync", "\"-o\", \"CompressionLevel=9\",", ""
    inreplace "realsync", "-rltzxv", "-rltzxvp"
    bin.install "realsync","bin/darwin/notify"
  end

end
