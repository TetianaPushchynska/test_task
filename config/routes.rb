Rails.application.routes.draw do
  devise_for :employees
  root 'departments#index'

  resources :departments
end
