Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos, only: [:index, :create], format: false
  resources :users, only: [:new, :create], format: false

  root 'users#new'
end
