Rails.application.routes.draw do
  
  root  to: 'contacts#home'
  post '/' => 'contacts#create'

  get '/thanks' => 'contacts#thanks'
end
