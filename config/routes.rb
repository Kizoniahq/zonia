Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    root 'home#index'

    authenticated :user do
       root 'users#dashboard', as: "authenticated_root"
     end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
