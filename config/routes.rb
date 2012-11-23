S3EmFtp::Application.routes.draw do
  

  root :to => 'home#index'
 	match "/upload" => "files#upload"
 	resources :files

end
