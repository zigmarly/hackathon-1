Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/create'
  get 'movies/edit'
  get 'movies/update'
  get 'movies/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
