Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  # resources :stores, only: [:index, :show]

  get ':store_name', to: 'stores#show', as: :store
end
