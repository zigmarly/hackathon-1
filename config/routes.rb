Rails.application.routes.draw do
<<<<<<< HEAD
  resources :movies
  devise_for :users

  root to: "movies#index"
=======
  root to: "movies#index"
  devise_for :users
  
  resources :movies
>>>>>>> The sauce to begin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
