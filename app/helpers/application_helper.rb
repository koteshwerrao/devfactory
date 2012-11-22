module ApplicationHelper
  def download_url_for(file_filename)  
        AWS::S3::S3Object.url_for(file_filename,"em-ftpd-trial-kotesh", :authenticated => false)  
    end 
end
