Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'

get '/profissionaisvegs', to: 'places#profs'
resources :places
resources :contacts
get '/contato', to: 'contacts#new'
post '/contacts', to: 'contacts#create'
get '/list', to: 'places#list'
end
