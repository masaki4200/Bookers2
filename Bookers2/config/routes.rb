Rails.application.routes.draw do
  get 'home/about'
  root to: 'home#index'
  #devise_for :users
  devise_for :users, controllers: {
        sessions:      'users/sessions',
        passwords:     'users/passwords',
        registrations: 'users/registrations'
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  resources :homes, only: [:index]
end