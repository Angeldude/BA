Rails.application.routes.draw do
  devise_for :admins, :skip => :registrations
  resources :beach_accesses

  root 'beach_accesses#homepage'
  post '/search' => 'site#search'
  get '/about' => 'beach_accesses#about'
  get '/contact' => 'beach_accesses#contact'

end
