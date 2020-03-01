Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"

  resources :users do
    member do
      get :confirm_email
    end
  end
  resource :session
end
