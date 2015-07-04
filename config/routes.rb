Rails.application.routes.draw do
  
  resources :courses do
  	resources :participants, except: [:show, :index]
  end
  
	devise_for :users, controllers: {
    	registrations: 'user/registrations'
  	}

	root 'home#home'
  
end
