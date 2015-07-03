Rails.application.routes.draw do
  
  resources :courses

	devise_for :users, controllers: {
    	registrations: 'user/registrations'
  	}

	root 'home#home'
  
end
