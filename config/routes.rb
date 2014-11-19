Rails.application.routes.draw do

  root 'users#home'

  resources :users
  resources :admin, only: [:index]

  scope 'admin' do
    resources :items, :fillings
    get   '/menu',   to: "admin#menu"
  end

  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/menu',      to: 'items#menu_items'
  get '/register',  to: 'users#new'

end
