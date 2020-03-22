Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: 'registrations' }
  root 'employees#index'

  resources :employees, only: [:index]

  namespace :admin do
    resources :departments
  end
end
