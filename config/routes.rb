Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :relationships
  resources :user, only: [:index, :show]
  resources :friiiends
  #get 'user/index'
  resources :friends
  resources :tweets do
    post 'like', to:"tweets#like"
    post 'retweet', to:"tweets#retweet"
  end
  devise_for :users
  root to: "tweets#index"
  #get 'search', to:"tweets#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
