Rails.application.routes.draw do
  resources :shrine_posts
  resources :active_storage_posts
  resources :carrierwave_posts
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
