Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    root "home#index", path: "/"
	  resources :cars
    resources :categories
  end
  devise_for :users, controllers: {sessions: "sessions"}
  root "index#index"
  resources :categories
  resources :cars
  resources :abouts, path: "gioi-thieu"
end
