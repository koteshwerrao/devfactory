require 'net/ftp'

class FilesController < ApplicationController
  
	def index
  	ftp =	FileManager.ftp_connect
  	unless params[:path].blank?
  		ftp.chdir(params[:path])
  	end
    @dirs, @files = FileManager.seg(ftp.list)
    @current = ftp.pwd.gsub!("/","")
    ftp.close
  end

  def new
  end
  
  def upload
  	path = params[:file].path
  	ftp =	FileManager.ftp_connect
 		ftp.putbinaryfile(path)
 		ftp.close
 		redirect_to files_path
  end

  def get_item
  	ftp =	FileManager.ftp_connect
  	if params[:t] == "file"
  		localfile = params[:n]
  		ftp.get(params[:f],localfile)
  		flash[:notice] = "Successfully downloaded file to root directory!"
  		redirect_to files_path
  	else
  		redirect_to files_path(:path => params[:f])
  	end
	end
	
	def mkdir_item
	end
	
	def delete_item
	end

end
