Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :groups, only: [:index, :new, :create] do
    member do
      get :join
    end
  end
end
