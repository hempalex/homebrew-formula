require "formula"

class DklabRealsync < Formula
  url "https://github.com/DmitryKoterov/dklab_realsync/archive/master.tar.gz"
  homepage "https://github.com/DmitryKoterov/dklab_realsync"
  version "1.0"
  sha256 "7016b15dbffb3073d027f63bc41eb12d418fc56bab1ffac5524f810140c88f6f"

  def install
    inreplace "realsync", "bin/darwin/notify", "notify"
    inreplace "realsync", "if (!-d $DIR_PRIVATE || !-f $FILE_CONFIG)", "if (!-f $FILE_CONFIG)"
    inreplace "realsync", "\"-o\", \"CompressionLevel=9\",", ""
    inreplace "realsync", "-rltzxv", "-rltzxvp"
    bin.install "realsync","bin/darwin/notify"
  end

end
