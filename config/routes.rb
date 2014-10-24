ImportSite::Application.routes.draw do

  #resources :contents
  resources :contents do
	  member do
	    get 'home_temp'
	  end
	end
  resources :coupons
  resources :emails



 #root "contents#new"
 root "emails#new"

 
end
