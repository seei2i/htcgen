Htcgen::Application.routes.draw do
  
  get "cities/index"
  get "cities/stdpage"
  get "locations/index"

  resources :cities do
    collection { post :import }
    collection do
      get 'remove_all'
    end
  end

  resources :locations do
    collection { post :import }
    collection do
      get 'remove_all'
    end
  end

  get "states/index"
  
  resources :states, path: "site/" do
    collection { post :import }
    collection do
      get 'remove_all'
    end
  end

  resources :states, path: "site/" do
    collection { post :import }
    resources :cities, path: "blood-testing/" do
      collection do
        get 'remove_all'
      end
      resources :locations
    end
  end

  # authenticated :user do
  #   root :to => 'home#index'
  # end
  # root :to => "home#index"

  get "home/index"
  devise_for :users
  resources :users

  devise_scope :user do 
    authenticated :user do
      root :to => 'home#upload'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new'
    end
    root :to => 'home#upload'
  end

end