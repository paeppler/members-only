Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
