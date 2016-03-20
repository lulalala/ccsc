Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :groups, only: [:show]
  resources :posts, only: [:show]
  resources :fountains, only: [:index, :show]

  namespace :admin do
    resources :fountains, except: [:show]
    resources :posts, except: [:show]
    resources :groups, except: [:show]
    resources :notices, except: [:show]
    resources :schedules
  end
end
