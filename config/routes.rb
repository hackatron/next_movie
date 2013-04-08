NextHcktrnMovie::Application.routes.draw do
  resources :movies

  get 'home/index'

  root to: 'home#index'
end
