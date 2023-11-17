Rails.application.routes.draw do
  devise_for :users
  root "pages#index"
  get "users", to: "pages#users"
end
