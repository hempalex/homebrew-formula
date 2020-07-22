class Far2l < Formula
  desc "Linux port of FAR v2"
  homepage "https://github.com/elfmz/far2l"
  url "https://github.com/elfmz/far2l/archive/alpha-14jun20.tar.gz"
  version "0.2-alpha.2020-06-14"
  sha256 "5618dfa3c55c6b6e1566eb663a035fc0fa526a795b33d7243b69bb593ea35a7f"
  head "https://github.com/elfmz/far2l.git"

  depends_on "cmake" => :build
  depends_on "gawk"
  depends_on "glib"
  depends_on "neon"
  depends_on "pkg-config"
  depends_on "wget"
  depends_on "wxmac"

  def install
    system "cmake", ".", *std_cmake_args, "-DUSEWX:BOOL=OFF"
    system "make", "install"
    mv bin/"far2l", bin/"far2l.orig"
    mkdir_p bin.to_s
    (bin/"far2l").write <<~EOS
      #!/bin/sh
      "#{prefix}/bin/far2l.orig"
    EOS
  end
end
