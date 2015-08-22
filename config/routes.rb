Rails.application.routes.draw do

  mount Buttafly::Engine, at: "/buttafly"
  
  resources :comments
  resources :articles
  devise_for :users

  # static page routes
  get '/about',   to: "static#about"
  get '/terms',   to: "static#terms"
  get '/privacy', to: "static#privacy"
  get '/help',    to: "static#help"
  get '/contact', to: "static#contact"
  get '/home',    to: "static#home"

  concern :media_produceable do 
    resources :addresses, shallow: true
    resources :galleries, :photos 
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
