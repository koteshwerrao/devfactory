S3EmFtp::Application.routes.draw do
  

  root :to => 'home#index'
 	match "/upload" => "files#upload"
 	match "/filedir" => "files#get_item", as: :get_item
 	resources :files

end
