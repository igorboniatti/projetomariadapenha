Rails.application.routes.draw do
  resources :archives
  devise_for :users
  resources :publications
  resources :doubts
  resources :institutes

  get "home" => "website#home", as: :home  
  get "about" => "website#about", as: :about
  get "game" => "website#game", as: :game
  get "maria_da_penha" => "website#maria_da_penha", as: :maria_da_penha

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
