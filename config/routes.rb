Rails.application.routes.draw do

  resources :addresses_addressables
  resources :addresses
  resources :wines
  devise_for :users

  # static page routes
  get '/about', to: "static#about"
  get '/terms', to: "static#terms"
  get '/privacy', to: "static#privacy"
  get '/help', to: "static#help"
  get '/contact', to: "static#contact"
  get '/home', to: "static#home"

  concern :media_produceable do 
    # resources :photos, :galleries
  end

  resources :producers do 
    resources :products
    concerns :media_produceable
  end 
  
  resources :wineries do 
    resources :wines
    concerns :media_produceable
  end



  # root
  root 'static#home'


end
