Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "insurances#new"

  resources :insurances, only: %i[create update]

  resources :request_callbacks, only: %i[create update]
end
