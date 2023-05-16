Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :comments, only: %i[create destroy]
end
