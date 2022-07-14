Rails.application.routes.draw do
  get 'spensiones/index'
  devise_for :users
  resources :planvitals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "planvitals#index"
end
