Rails.application.routes.draw do
  devise_for :users
  root "patients#index"
 
  resources :patients do
    resources :appointments
  end
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
