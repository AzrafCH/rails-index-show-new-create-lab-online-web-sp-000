# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

resources :coupons, only: [:index, :new, :create]
get '/coupons/:id', to: 'coupons#show', as: 'coupon'
