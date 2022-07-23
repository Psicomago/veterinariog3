Rails.application.routes.draw do
  get 'home/index'
  resources :clients
  resources :pets 
  resources :pet_histories
   

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
