Rails.application.routes.draw do
  resources :archives
  devise_for :users
  resources :publications
  resources :doubts
  resources :institutes
  resources :comentaries
  resources :questions

  root :to => "website#home"
  get "home" => "website#home", as: :home  
  get "about" => "website#about", as: :about
  get "game" => "website#game", as: :game
  get "vagas" => "website#vagas", as: :vagas
  get "videos" => "website#videos", as: :videos
  get "compromisso_e_atitude" => "website#compromisso_e_atitude", as: :compromisso_e_atitude
  get "ministerio_publico" => "website#ministerio_publico", as: :ministerio_publico


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
