Rails.application.routes.draw do
  devise_for :users
  root to: "relationships#index"
  resources :groups do
    member do
      get :join
      delete :quit
      get :member
    end
    collection do
      get :list
      get :search
    end
    resources :tweets
  end
  resources :users, only: [:show, :edit, :update]
  resources :relationships, only: [:index, :create, :destroy] do
    member do
      get :following
      get :follower
    end
  end
end
