Rails.application.routes.draw do

  	resources :courses do
  		resources :participants, except: [:show, :index]
  		resources :lessons do
  			get '/tests/:id', to: 'tests#createTest', as: "create_test"
  		end
  	end
  
	devise_for :users, controllers: {
    	registrations: 'user/registrations'
  	}

	root 'home#home'
  
end
