require 'formula'

class Ttyrec <Formula
  url 'http://0xcc.net/ttyrec/ttyrec-1.0.8.tar.gz'
  homepage 'http://0xcc.net/ttyrec/'
  md5 ''

  def install
		system "mkdir #{prefix}/bin"
    system "make"
		system "cp ttytime ttyplay ttyrec #{prefix}/bin"
  end
end
