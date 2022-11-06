Rails.application.routes.draw do
  root 'shifts#index'

  resources :shifts
  resources :qualifications
  resources :users, except: :destroy
end
