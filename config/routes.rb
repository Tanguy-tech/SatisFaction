Rails.application.routes.draw do
  get 'static/index_about_us'
  get 'static/index_our_services'
  get 'static/index_contact_us'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
