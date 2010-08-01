require 'formula'

class Ttyrec <Formula
  url 'http://0xcc.net/ttyrec/ttyrec-1.0.8.tar.gz'
  homepage 'http://0xcc.net/ttyrec/'
  md5 ''

# depends_on 'cmake'

  def install
    system "make"
		# TODO: fix
		system "cp ttytime ttyplay ttyrec #{prefix}/bin"
  end
end
