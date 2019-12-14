Rails.application.routes.draw do

  resources :surveys
  resources :questions
  resources :lists
  resources :contacts
  resources :answers, except: [:index, :show, :edit]
  resources :landings
  resources :dashboards, only: [:show]
  resources :email_verifications, only: [:index, :new, :create]
  get 'static/index_home'
  root 'static#index_home'


  devise_scope :user do
    get "reset_password" => "devise/passwords#new", as: "new_user_password"
  end

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
