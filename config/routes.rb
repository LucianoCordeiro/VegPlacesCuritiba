Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'places#home'

resources :places
resources :contacts
resources :users
get '/contato', to: 'contacts#new'
post '/contato', to: 'contacts#create'
get '/list', to: 'places#list'
get '/profissionaisvegs', to: 'places#profs'
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'
end
