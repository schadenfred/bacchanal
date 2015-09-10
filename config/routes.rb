Rails.application.routes.draw do

  mount Payola::Engine => '/payola', as: :payola
  mount Buttafly::Engine, at: "/buttafly"
  
  devise_for :users

  get '/about',   to: "static#about"
  get '/terms',   to: "static#terms"
  get '/privacy', to: "static#privacy"
  get '/help',    to: "static#help"
  get '/contact', to: "static#contact"
  get '/home',    to: "static#home"
  get '/sample',    to: "articles#sample"

  concern :media_promotable do 
    
    resources :articles
    shallow do 
      resources :galleries, :photos
    end
  end

  resources :orgs do 
    # concerns :media_promotable
  end 

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
