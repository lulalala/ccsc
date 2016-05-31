Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :groups, only: [:show]
  resources :posts, only: [:show]
  resources :fountains, only: [:index, :show]
  resources :schedules, only: [:index]
  resources :culture_preachings, only: [:index, :show], controller: "culture_entries" do
    get :tag, on: :collection
  end
  resources :albums, only: [:index, :show]

  namespace :admin do
    get "/", to: redirect('/admin/notices')
    resources :fountains, except: [:show] do
      member do
        post 'new_catalogue'
      end
    end
    resources :fountain_entries, except: [:show]
    resources :culture_entries, except: [:show, :destroy]
    resources :posts, except: [:show]
    resources :groups, except: [:show]
    resources :notices, except: [:show]
    resources :schedules, except: [:show]
  end
end
