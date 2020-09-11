Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  #root to: 'selected_users#index'
  #resources :selected_users
  root to: 'messages#index'
  resources :messages
end
