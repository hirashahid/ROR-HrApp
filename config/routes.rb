Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :employees
  resources :documents
  resources :users

  #public pages routes
  get 'about', to: 'pages#about_us'
  get 'contact', to: 'pages#contact_us'
  get 'privacy-policy', to: 'pages#privacy_policy'
  get 'terms-and-condition', to: 'pages#terms_and_conditions'
end
