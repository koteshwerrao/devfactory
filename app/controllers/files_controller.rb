class FilesController < ApplicationController

    def index  
      
      bucket = AWS::S3::Bucket.find("em-ftpd-trial-kotesh") 
       @files = AWS::S3::Bucket.find("em-ftpd-trial-kotesh").objects  
      puts bucket.inspect
      puts 888888888888888888888
      puts bucket.objects.inspect
  end
  def upload  
    begin  
      #AWS::S3::S3Object.store(params[:file].original_filename, params[:file].read, "em-ftpd-trial-kotesh", :access => :public_read)
     AWS::S3::S3Object.store(sanitize_filename(params[:file].original_filename), params[:file].read, "em-ftpd-trial-kotesh",:access => :public_read) 

            redirect_to root_path  
    rescue  
        render :text => "Couldn't complete the upload"  
        end  
    end  

  def download
  end

  def delete
  end


private
def sanitize_filename(file_name)  
    just_filename = File.basename(file_name)  
    just_filename.sub(/[^\w\.\-]/,'_')  
  end 

end

