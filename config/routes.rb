Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :managements, only: [:index]
  devise_for :managements
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

   namespace :managements do
      resources :projects do
        resources :tasks
      end
      resources :tasks
        resources :products
        resources :contacts do
          resources :comments
        end
    end

      resources :projects, only: [:index, :show]
        resources :products, only: [:index, :show]
        resources :contacts, only:[:new, :create]

  ActiveAdmin.routes(self)
    root 'home#index'

    authenticated :user do
       root 'users#index', as: "authenticated_root"
     end
     authenticated :managment do
       root "management#index"
     end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
