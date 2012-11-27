S3EmFtp::Application.routes.draw do
  root :to => 'files#index'
 	match "/upload" => "files#upload"
 	match "/filedir" => "files#get_item", as: :get_item
 	resources :files
  match "/delete_file" => "files#delete_file",as: :delete_file
  match "/remove_directory" => "files#remove_directory",as: :remove_dir
end
