Rails.application.routes.draw do
  
  resources :mbtinewscores
  resources :mbtiscores
  resources :johariscores
  resources :firoscores
  resources :joharis
  resources :firos
  resources :mbtis
  resources :ecscores
  get 'ecresult/show'
  get 'home/index'
  get 'home/lab'
  resources :ecassessments
  resources :profiles
  devise_for :users
  root to: 'home#lab'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
