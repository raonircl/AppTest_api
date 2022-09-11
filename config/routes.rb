Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index" 
  get '/ola', to: 'home#ola'
  get '/bom_dia', to: 'home#bom_dia'
  get '/bom_dia/:meu', to: 'home#bom_dia'
  #get '/boa_noite', to: 'home#boa_noite'
  #get '/raoni', to: 'home#raoni'
  #get '/fff', to: 'home#fff'
end
