Rails.application.routes.draw do
  devise_for :users
  root to: 'selected_users#index'
  resources :selected_users
end
