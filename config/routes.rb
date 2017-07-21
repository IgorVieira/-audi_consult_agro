Rails.application.routes.draw do
  
  resources :abouts
  resources :services
  resources :contacts , only:[:new, :create]
  root 'welcome#index'
  
  get '*path' => redirect('/')
end
