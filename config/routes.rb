Rails.application.routes.draw do
  root 'projects#index'
  devise_for :users
  resources :projects
  resources :comments, only: %i[create destroy]
end
