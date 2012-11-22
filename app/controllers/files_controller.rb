class FilesController < ApplicationController
   def index  
      bucket = AWS::S3::Bucket.find("em-ftpd-trial-kotesh") 
       @files = AWS::S3::Bucket.find("em-ftpd-trial-kotesh").objects  
  end
  def upload  
    begin  
     AWS::S3::S3Object.store(sanitize_filename(params[:file].original_filename), params[:file].read, "em-ftpd-trial-kotesh",:access => :public_read) 
         redirect_to files_index_path
    rescue  
        render :text => "The file is already exist"  
        end  
    end  

  def download
  end

  def delete
    if (params[:id]) 
      AWS::S3::S3Object.find(params[:id], "em-ftpd-trial-kotesh").delete  

      redirect_to files_index_path
    else  
      render :text => "No file was found to delete!"  
    end  
  end  

private
def sanitize_filename(file_name)  
    just_filename = File.basename(file_name)  
    just_filename.sub(/[^\w\.\-]/,'_')  
  end 

end

