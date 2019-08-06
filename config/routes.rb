Rails.application.routes.draw do
  root to: 'pets#index'
  resources :pets, except: [:index] do
    resources :houses, only: :create
  end
end
