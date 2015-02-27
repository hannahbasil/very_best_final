Rails.application.routes.draw do
  resources :venues

  resources :dishes

  resources :cuisines

  resources :favorites

  devise_for :users
  root 'dishes#index'

  resources :neighborhoods
end
