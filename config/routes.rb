ImportSite::Application.routes.draw do

  resources :contents 

 root "contents#new"
end
