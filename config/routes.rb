Rails.application.routes.draw do
  
  root  to: 'application#home'

 resources :contacts, only: [:new, :create]
end
