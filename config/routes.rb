ImportSite::Application.routes.draw do

  resources :contents 
  resources :coupons
  resources :emails

 #root "contents#new"
 root "emails#new"
end
