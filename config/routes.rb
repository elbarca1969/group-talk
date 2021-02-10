Rails.application.routes.draw do
  devise_for :users
  root to: "relationships#index"
  post '/relationships/guest_sign_in', to: 'relationships#new_guest'
  resources :groups, only: [:new, :create, :show, :edit, :update, :destroy] do
    member do
      get :join, :member
      delete :quit
    end
    collection do
      get :list, :search
    end
    resources :tweets do
      resources :likes, only: [:create, :destroy] do
        member do
          get :list
        end
      end
    end
  end
  resources :users, only: [:show, :edit, :update] do
    member do
      get :list, :owner
      delete :purge
    end
  end
  resources :relationships, only: [:index, :create, :destroy] do
    member do
      get :following, :follower
    end
  end
end
