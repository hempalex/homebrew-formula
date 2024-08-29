class DklabRealsync < Formula
  url "https://github.com/DmitryKoterov/dklab_realsync/archive/master.tar.gz"
  homepage "https://github.com/DmitryKoterov/dklab_realsync"
  version "1.0"
  sha256 "57efa311ce9a6f996c5e4853fa4b495804cf65ca5a853a12a546024e9ee5115a"

  livecheck do
    skip "No version information available"
  end


  def install
    inreplace "realsync", "bin/darwin/notify", "notify"
    inreplace "realsync", "if (!-d $DIR_PRIVATE || !-f $FILE_CONFIG)", "if (!-f $FILE_CONFIG)"
    inreplace "realsync", "\"-o\", \"CompressionLevel=9\",", ""
    inreplace "realsync", "-rltzxv", "-rltzxvp"
    system "clang -framework CoreFoundation -framework CoreServices -o notify src/darwin/notify.c"
    bin.install "realsync","notify"
  end

end
