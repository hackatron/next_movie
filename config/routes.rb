NextMovie::Application.routes.draw do
  resources :movies do
    resources :votes
  end

  get 'home/index'

  root to: 'home#index'
end