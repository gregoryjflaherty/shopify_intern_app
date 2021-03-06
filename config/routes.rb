Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  resources :items, except: [:show]
  resources :warehouses, only: [:index, :show, :create]
end
