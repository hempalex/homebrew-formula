class Catdoc < Formula
  desc "catdoc is program which reads one or more Microsoft word files and outputs text. xls2csv does the same for Excel files"
  homepage "http://vitus.wagner.pp.ru/software/catdoc/"
  url "http://ftp.wagner.pp.ru/pub/catdoc/catdoc-0.95.tar.gz"
  sha256 "514a84180352b6bf367c1d2499819dfa82b60d8c45777432fa643a5ed7d80796"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-wordview", "--with-input=cp1251", "--with-output=utf-8"
    system "make", "install"
  end

  test do
    system "false"
  end
end