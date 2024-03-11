Rails.application.routes.draw do
  resources :places
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "places#index" # шукає контролер welcome з екшином(методом) index
  get 'about', to: 'welcome#about'
  get 'biking', to: 'places#index'
  get 'climbing', to: 'places#index'
  get 'skiing', to: 'places#index'
  get 'backpacking', to: 'places#index'
  get 'other', to: 'places#index'
end
