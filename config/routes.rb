Rails.application.routes.draw do
  root 'home#index'

  resources :employees
  resources :documents

  #public pages routes
  get 'about', to: 'pages#about_us'
  get 'contact', to: 'pages#contact_us'
  get 'privacy-policy', to: 'pages#privacy_policy'
  get 'terms-and-condition', to: 'pages#terms_and_conditions'
end
