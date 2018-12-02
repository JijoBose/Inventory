Rails.application.routes.draw do
  devise_for :users
  root 'home_pages#index'
  get 'home_pages/index'
  get 'home_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
