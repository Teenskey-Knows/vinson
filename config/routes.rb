Rails.application.routes.draw do
  #Heroes
  get '/heroes', to: 'heros#index'
  get '/heroes/:id', to: "heros#show"

  #Power
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'



end
