Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/instructions', to: 'application#instructions'

  namespace :sessions do
    get 'new'
    post 'create'
  end

  root 'sessions#new'
end
