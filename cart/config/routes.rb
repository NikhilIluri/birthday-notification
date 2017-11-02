Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :categories
  root "home#homepage"
  get "homepage", to: "home#homepage"
  get "customer", to: "home#customer"
  get 'display/:id'=>'home#display', as: :display
  get "admin", to: "home#admin"
  get "admin_redirect"=>'home#admin_redirect'
  get "authenticate"=>'home#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
