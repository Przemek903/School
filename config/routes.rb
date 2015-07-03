Rails.application.routes.draw do
  
	devise_for :users, controllers: {
    	registrations: 'user/registrations'
  	}

	root 'home#home'
  
end
