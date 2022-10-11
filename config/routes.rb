Rails.application.routes.draw do
  #Heroes
  get '/heroes', to: 'heros#index'
  get '/heroes/:id', to: "heros#show"

  #Power
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'
  put '/powers/:id', to: 'powers#update'

  #HeroPower

  post '/heropower', to: 'hero_powers#create'


end
