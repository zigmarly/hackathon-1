Rails.application.routes.draw do
  devise_for :users

  root to: "movies#index"

  resources :movies do
      resources :comments, only: [:new, :create, :edit, :update, :destroy]
  end
end
