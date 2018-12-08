Rails.application.routes.draw do
  resources :supplier_products
  resources :products
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home_pages#index'
  get 'home_pages/index'
  get 'home_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
