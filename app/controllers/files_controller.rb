require 'net/ftp'

class FilesController < ApplicationController

#index  
	def index
      ftp = FileManager.ftp_connect
      unless params[:path].blank?
      ftp.chdir(params[:path])
        end
      @dirs, @files = FileManager.seg(ftp.list)
      @current = ftp.pwd.gsub!("/","")
      ftp.close
  end

  def new
  end

#Upload File 
  def upload
  	  path = params[:file].path
  	  ftp =	FileManager.ftp_connect
 		  ftp.putbinaryfile(path, remotefile = params[:file].original_filename)
      ftp.close
 		  redirect_to files_path
  end

#Get file
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

#Delete File	
	def delete_file
	    ftp = FileManager.ftp_connect
      @ftp = params[:file]
      resp = ftp.sendcmd("DELE " + @ftp)
	    ftp.close
      flash[:notice] = "Successfully Deleted!"
	    redirect_to files_path
end

#Remove Directory
  def remove_directory
      ftp =	FileManager.ftp_connect
      @ftp = params[:dir]
      ftp.voidcmd("RMD " + @ftp)
      flash[:alert] = "Successfully Deleted!"
      ftp.close
	    redirect_to files_path
  end
end
