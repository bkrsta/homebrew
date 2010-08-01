require 'formula'

class LlvmR89156 <Formula	
  head      'https://llvm.org/svn/llvm-project/llvm/trunk', :using=>:svn, :revision => "89156"
  homepage  'http://llvm.org/'

  def install
    ENV.gcc_4_2 # llvm can't compile itself
		ENV['UNIVERSAL'] = "1"
		ENV['UNIVERSAL_ARCH'] = "i386 x86_64"

    system "./configure", "--prefix=#{prefix}",
                          "--enable-bindings=none",
                          "--enable-optimized",
													"--with-llvmgccdir=/tmp"
    system "make"
    system "make install" # seperate steps required, otherwise the build fails
  end
end
