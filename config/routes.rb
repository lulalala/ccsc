Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :groups, only: [:show]
  resources :posts, only: [:show]
  resources :fountains, only: [:index, :show]
  resources :schedules, only: [:index]

  namespace :admin do
    resources :fountains, except: [:show] do
      member do
        post 'new_catalogue'
      end
      resources :fountain_entries, except: [:show]
    end
    resources :culture_entries, except: [:show, :destroy] 
    resources :posts, except: [:show]
    resources :groups, except: [:show]
    resources :notices, except: [:show]
    resources :schedules, except: [:show]
  end
end
