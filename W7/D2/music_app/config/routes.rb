Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resource :session, only:[:new, :create, :destroy] #singular
  resources :bands

  root to: 'users#index'
end
