Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "sessions"}
  root "index#index"
  resources :categories
  resources :cars
end
