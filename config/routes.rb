Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :groups, only: [:show] do
    resources :notices, only: [:index, :show]
  end
  resources :periodical_entries, only: [:show]
  resources :fountains, type:"Fountain", controller:"periodicals", only: [:index, :show]
  resources :seeds, type:"Seed", controller:"periodicals", only: [:index, :show]
  resources :schedules, only: [:index]
  resources :culture_preachings, only: [:index, :show], controller: "culture_entries" do
    get :tag, on: :collection
    get 'categories/:category', to: 'culture_entries#category', on: :collection, as: :category
  end
  resources :albums, only: [:index, :show]
  get 'infos/:seo_name', to: 'infos#show', as: :info

  namespace :comment do
    resources :posts, only: [:create]
  end

  namespace :forum do
    resources :boards, only: [:show] do
      resources :topics, only: [:new, :show, :create, :edit, :update]
    end
    get '/', to: 'boards#index'
  end

  namespace :admin do
    get "/", to: redirect('/admin/notices')
    resources :fountains, type:"Fountain", controller:"periodicals", except: [:show]
    resources :seeds, type:"Seed", controller:"periodicals", except: [:show]
    resources :periodical_entries, except: [:index, :show]

    resources :culture_entries, except: [:show, :destroy]
    resources :posts, except: [:show]
    resources :groups, except: [:show]
    resources :notices, except: [:show]
    resources :schedules, except: [:show]
    resources :banners, except: [:show]
    resources :infos, except: [:show]
    resources :categories, except: [:show]
    namespace :forum do
      resources :boards, only: [:show, :new, :create] do
        resources :topics, except: [:index]
      end
      get '/', to: 'boards#index'
      get 'all_topics', to: 'topics#all_topics'
    end
    namespace :comment do
      resources :posts, only: [:create, :edit, :update]
    end
  end
end
