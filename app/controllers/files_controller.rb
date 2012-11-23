require 'net/ftp'
class FilesController < ApplicationController
  
  def index
  	ftp=	Net::FTP.new
 		ftp.connect("0.0.0.0","2100")
 		ftp.login("admin", "test123")
 		@files = ftp.list
 		ftp.close
  end

  def new
  end
  
  def upload
  	path = params[:file].path
  	ftp=	Net::FTP.new
 		ftp.passive = true
 		ftp.connect("0.0.0.0","2100")
 		ftp.login("admin", "test123")
 		ftp.putbinaryfile(path)
 		ftp.close
 		redirect_to files_path
  end

end
