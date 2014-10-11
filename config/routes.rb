Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index]
  namespace :admin do
    resources :orders, only: [:index, :show]
  end
  resources :users,  only: [:index, :show]

  post 'items/:id/activate', to: 'items#activate', as: 'activate_items'

end
