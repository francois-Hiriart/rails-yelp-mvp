Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # resources :restaurants, only []
  resources :restaurants, only: [ :new, :create, :show, :index ] do
    resources :reviews, only: [ :new, :create ]
  end
end
