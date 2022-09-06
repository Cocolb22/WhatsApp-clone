Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "conversations#index"

  resources :conversations, only: :index

  resources :users

  resources :conversations do
    resources :messages
  end

end
