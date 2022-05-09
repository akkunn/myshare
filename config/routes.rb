Rails.application.routes.draw do


  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # get 'users/show' => "users#show"
  # get "users/:id/edit" => "users#edit"
  resources :users
 
  root "homes#index"
  resources :rooms
  post "rooms/result" => "rooms#result"
  post "rooms/search" => "rooms#search"

  resources :reserves
  post "reserves/new" => "reserves#new"
  get "reserves/confirm" => "reserves#confirm"

  
  
  # get 'homes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
