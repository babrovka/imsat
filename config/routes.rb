Imsat::Application.routes.draw do

  get "search/search"

  mount Ckeditor::Engine => '/ckeditor'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :solutions
  resources :products
  resources :aids
  
  root to: 'static_pages#home'
  get '/contact',   to: 'static_pages#contact'
  get '/about',   to: 'static_pages#about'
  get '/search', to: 'search#search'
end