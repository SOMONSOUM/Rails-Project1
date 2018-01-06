Rails.application.routes.draw do

#  get 'products' => 'products#index' 
#  get 'products/:id' => 'products#show', :as => :product
#  get 'products/:id/edit' => 'products#edit' 
#  patch 'products/:id' => 'products#update'
#  put 'products/:id' => 'products#update'
  resources :products
end
