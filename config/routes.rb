Rails.application.routes.draw do

  resources :reviews
  require 'route_drawer'

  draw :api, :v1

  draw :engines, :buttafly

  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/logout', to: 'sessions#destroy', via: [:get, :post]
  
  devise_for :users

  get '/about',     to: "static#about"
  get '/contact',   to: "static#contact"
  get '/help',      to: "static#help"
  get '/home',      to: "static#home"
  get '/pricing',   to: "static#pricing"
  get '/privacy',   to: "static#privacy"
  get '/terms',     to: "static#terms"
  get '/sample',     to: "static#sample"
  get '/dashboard', to: "dashboard#show"
  get '/profile',   to: "profile#show"

  concern :media_promotable do 
    
    resources :articles do 
      resources :comments
    end

  resources :galleries
    shallow do 
      resources :galleries, :photos
    end
  end

  resources :comments

  resources :orgs do 
    concerns :media_promotable
  end 

  resources :photos

  resources :competitions, shallow: true do 
    resources :events
  end

  resources :producers do 
    resources :products
  end 
  
  resources :wineries do 
    concerns :media_promotable
    resources :wines
    resources :vineyards
  end
  resources :vineyards do 
    concerns :media_promotable
    resources :wines
    resources :wineries
  end
    
  root 'static#home'
end
