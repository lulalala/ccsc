Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :groups, only: [:show] do
    resources :notices, only: [:index, :show]
  end
  resources :fountain_entries, only: [:show]
  resources :fountains, only: [:index, :show]
  resources :schedules, only: [:index]
  resources :culture_preachings, only: [:index, :show], controller: "culture_entries" do
    get :tag, on: :collection
    get 'categories/:category', to: 'culture_entries#category', on: :collection, as: :category
  end
  resources :albums, only: [:index, :show]
  get 'infos/:seo_name', to: 'infos#show', as: :info

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
    resources :banners, except: [:show]
    resources :infos, except: [:show]
    resources :categories, except: [:show]
  end
end
