Rails.application.routes.draw do
  resources :products
  root to: 'products#index'

  get '/products_set_aside/:id', to: 'products#set_aside', as: 'products_set_aside'
  get '/products/offer', to: 'products#offer'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
