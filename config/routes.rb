Rails.application.routes.draw do
  devise_for :admins
  resources :beach_accesses

  root 'beach_accesses#homepage'
  post '/search' => 'site#search'
  get '/about' => 'beach_accesses#about'

end
