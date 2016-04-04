Rails.application.routes.draw do
  get '/forecasts', to: 'forecasts#index'
  get '/forecasts/:zipcode', to: 'forecasts#show'
end
