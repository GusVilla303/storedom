Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  post 'items/:id/activate', to: 'items#activate', as: 'activate_items'

end
