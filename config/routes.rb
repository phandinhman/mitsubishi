Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
	resources :car_details
  end
  devise_for :users, controllers: {sessions: "sessions"}
  root "index#index"
  resources :categories
  resources :cars
end
