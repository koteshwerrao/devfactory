class Koti < ActiveRecord::Base
  # attr_accessible :title, :body
 attr_accessor :image

has_attached_file_on_s3 :image, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" }
#    :storage => :s3,
#    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
#    :bucket => 'em-ftpd-trial-kotesh'
    :url  => "/attachments/:id/:basename.:extension",
    :path => ":rails_root/public/attachments/:id/:basename.:extension",
    :default_url => "/attachments/original/no-file.txt"

end
