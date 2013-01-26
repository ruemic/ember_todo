Todo::Application.routes.draw do
  root to: 'home#index'

  resources :lists
  resources :tasks
end
