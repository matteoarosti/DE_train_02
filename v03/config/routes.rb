Rails.application.routes.draw do
  resources :sessions
  resources :speakers
  resources :events
  resources :organizers
  get 'page/index'
  root 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
