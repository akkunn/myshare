Rails.application.routes.draw do
  
  root "homes#index"
  resources :rooms
  resources :reserves

  
  # get 'homes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
