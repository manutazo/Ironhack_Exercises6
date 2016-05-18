Rails.application.routes.draw do
  devise_for :users
  get 'users' =>  'users#show'
  get 'user/:id' =>   'user#show'
#  delete 'project/:id' to: 'project'
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]

  namespace :api do
      resources :barbecues
      post 'barbecues/:id/join' =>  'barbecues#join'
  end
end
