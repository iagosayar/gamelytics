Rails.application.routes.draw do
 
  # FRONTEND
  devise_for :users
  root to: "welcome#index"
  # BACKEND
   namespace :admin do
    root 'dashboard#index'
    resources :games
    resources :genres
    resources :platforms
  end
end
