Rails.application.routes.draw do
  
  devise_for :users
  #root to: 'selected_users#index'
  #resources :selected_users
  root to: 'selected_users#index'
  resources :logic1, only:[:new, :create]
  resources :selected_users do
    resources :matchings
  end
  resources :rooms, only: [:new, :create, :show] do
    resources :messages, only: [:index, :create]
  end
  get 'messages/index'
end
