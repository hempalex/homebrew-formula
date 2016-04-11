require "formula"

class Composer < Formula
  homepage 'http://getcomposer.org'
  head 'https://getcomposer.org/composer.phar'
  url 'http://getcomposer.org/download/1.0.0/composer.phar'
  sha1 '5a11325ec75e0a71b58945d721167c92c1cc648b'
  version '1.0.0'

  def install
    libexec.install "composer.phar"
    sh = libexec + "composer"
    sh.write("#!/usr/bin/env bash\n\n/usr/bin/env php -d allow_url_fopen=On -d detect_unicode=Off #{libexec}/composer.phar \"$@\"")
    chmod 0755, sh
    bin.install_symlink sh
  end

  def caveats; <<-EOS.undent
    Verify your installation by running:
      "composer --version".
    You can read more about composer and packagist by running:
      "brew home composer".
    EOS
  end
end