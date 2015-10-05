Rails.application.routes.draw do

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/logout', to: 'sessions#destroy', via: [:get, :post]
  
  mount Buttafly::Engine, at: "/buttafly"
  
  devise_for :users

  get '/about',     to: "static#about"
  get '/contact',   to: "static#contact"
  get '/help',      to: "static#help"
  get '/home',      to: "static#home"
  get '/pricing',   to: "static#pricing"
  get '/privacy',   to: "static#privacy"
  get '/terms',     to: "static#terms"
  get '/dashboard', to: "dashboard#show"
  get '/profile',   to: "profile#show"

  concern :media_promotable do 
    
    resources :articles
    shallow do 
      resources :galleries, :photos
    end
  end

  resources :comments #, only: [:create, :update, :destroy]

  resources :orgs do 
    # concerns :media_promotable
  end 

  resources :photos

  # resources :articles, only: [:destroy, :edit, :new, :update]

  resources :competitions, shallow: true do 
    # concerns :media_promotable
    resources :events
  end

  resources :producers do 
    # concerns :media_promotable
    resources :products
  end 
  
  resources :wineries do 
    concerns :media_promotable
    resources :wines
  end
    
  root 'static#home'
end
