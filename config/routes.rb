Rails.application.routes.draw do
  get 'qualifications/index'
  root 'shifts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :shifts
  resources :qualifications
  resource :users
end
