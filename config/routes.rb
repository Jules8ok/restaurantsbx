Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :restaurants
  get 'categories', to: 'restaurants#categories'
  get 'address', to: 'restaurants#address'
  get 'rating', to: 'restaurants#rating'
  get 'price', to: 'restaurants#price'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


