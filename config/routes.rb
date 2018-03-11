Rails.application.routes.draw do
  get 'management/index'

  get 'management/show'

  devise_for :managements
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config


   namespace :management do
      resources :projects
        resources :products
    end

      resources :projects, only: [:index, :show]
        resources :products, only: [:index, :show]

  ActiveAdmin.routes(self)
    root 'home#index'

    authenticated :user do
       root 'users#index', as: "authenticated_root"
     end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
