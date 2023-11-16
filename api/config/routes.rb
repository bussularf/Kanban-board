Rails.application.routes.draw do
  root "pages#index"
  get "users", to: "pages#users"
end
