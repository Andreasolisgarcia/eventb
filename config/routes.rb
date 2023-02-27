Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :events do
    resources :attendances, only: [:create, :destroy]
  end
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'events#index'
end
