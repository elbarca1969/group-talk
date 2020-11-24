Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :groups, only: [:index, :new, :create] do
    member do
      get :join
    end
    collection do
      get :list
    end
    resources :tweets, only: [:index, :new, :create]
  end
end
