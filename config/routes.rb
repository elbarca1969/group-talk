Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :groups, only: [:index, :new, :create]
end
