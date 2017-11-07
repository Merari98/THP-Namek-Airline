Rails.application.routes.draw do
	root 'flights#home'
	get '/flights', to: 'flights#index'
	get '/contact', to: 'flights#contact'
	resources :bookings, only: [:new, :create, :show]
end
