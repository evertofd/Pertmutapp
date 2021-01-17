Rails.application.routes.draw do

  get '/products_set_aside/:id', to: 'products#set_aside', as: 'products_set_aside'
  get '/products/publications', to: 'products#publications'
  get '/products/sold', to: 'products#sold'
  get '/products/reserved', to: 'products#reserved'
  devise_for :users
  resources :products do 
    resources :comments
  end
  root to: 'products#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
