Rails.application.routes.draw do
  resources :reviews

  get 'movie_list', to: 'reviews#movie_list', as: 'movie_list'
  get 'about', to: 'reviews#about', as: 'about'
  get 'review_list', to: 'reviews#review_list', as: 'review_list'

  root to: 'reviews#index'
end