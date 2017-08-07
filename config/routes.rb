Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :abouts
  resources :services
  resources :contacts , only:[:new, :create]
  root 'welcome#index'
  
  get '*path' => redirect('/')
end
