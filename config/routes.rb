NextHcktrnMovie::Application.routes.draw do
  resources :movies
  resources :votes

  get 'home/index'

  root to: 'home#index'
end
