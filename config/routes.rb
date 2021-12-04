Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static#home'
  resources :session, only: [:create]
  resources :registration, only: [:create]
  delete :logout, to: 'session#logout'
  get :logged_in, to: 'session#logged_in'

end
