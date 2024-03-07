Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "welcome#index" # шукає контролер welcome з екшином(методом) index
  get 'home', to: 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'biking', to: 'places#biking'
  get 'climbing', to: 'places#climbing'
  get 'skiing', to: 'places#skiing'
  get 'backpacking', to: 'places#backpacking'
  get 'other', to: 'places#other'
end
