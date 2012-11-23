require 'net/ftp'
class FileManager

	def self.ftp_connect
		ftp =	Net::FTP.new
 		ftp.connect("0.0.0.0","2100")
 		ftp.login("admin", "test123")
 		return ftp
	end
	
	def self.seg(frams)
		dirs = []
		files = []
		frams.each do |f|
			if f[0] == "d"
				dirs << f if f.split(/\s+/).last != ".."
			else
				files << f
			end
		end
		return dirs, files
	end
	
end
