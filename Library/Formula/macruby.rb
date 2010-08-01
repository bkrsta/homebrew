require 'formula'

class Macruby <Formula
  head 'git://git.macruby.org/macruby/MacRuby.git'
  homepage 'http://macruby.org'

	depends_on 'llvm-r89156'

  def install
		if Hardware.cpu_type == :ppc
			arch = 'ppc'
		else
			arch = Hardware.is_64_bit? ? 'x86_64' : 'i386'
		end
    system "rake", "archs=#{arch}", "framework_instdir=#{prefix}/Library/Frameworks", "sym_instdir=#{prefix}"
    system "rake install"
  end
	
	def caveats; <<-eos
To make this version the default execute the following commands
cd /Library/Frameworks/MacRuby.framework/Versions
sudo rm Current
sudo ln -s #{prefix}/Cellar/macruby/HEAD/Library/Frameworks/MacRuby.framework/Versions/Current Current
eos
  end

end
