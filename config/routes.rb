Rails.application.routes.draw do
  resources :reviews
  resources :movies 

  get 'show_movie', to: 'movies#show_movie', as: 'show_movie'
  get 'about', to: 'reviews#about', as: 'about'
  get 'review_list', to: 'reviews#review_list', as: 'review_list'

  root to: 'reviews#index'
end