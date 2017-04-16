Rails.application.routes.draw do

  resources :markets

  devise_for :users
  root to: 'markets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
