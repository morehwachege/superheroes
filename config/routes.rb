Rails.application.routes.draw do
  resources :hero_powers
  resources :powers
  resources :heroes, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
