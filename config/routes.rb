Rails.application.routes.draw do
  get 'groups/new'
  devise_for :users
  root to: "tweets#index"
end
