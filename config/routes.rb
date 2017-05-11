Rails.application.routes.draw do
  get 'home/index'
  get 'layouts/application'
  get 'home/about'
  get 'home/chat'
  get 'home/help'
  resources :messages
  resources :users
  root 'application#application'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
