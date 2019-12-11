Rails.application.routes.draw do

  resources :surveys
  resources :questions
  resources :lists
  resources :contacts
  resources :landings, param: :token
  get 'static/index_about_us'
  get 'static/index_our_services'
  get 'static/index_contact_us'
  get 'static/index_home'
  root 'static#index_home'


  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
