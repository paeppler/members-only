Rails.application.routes.draw do
  # resources :users
  resources :posts
  devise_for :users, controllers: { # <- rails g devise:controllers sagt so machen
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_for :admins
  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
