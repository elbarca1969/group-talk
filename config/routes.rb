Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :groups do
    member do
      get :join
      delete :quit
    end
    collection do
      get :list
      get :search
    end
    resources :tweets
  end
  resources :users, only: [:show]
end
