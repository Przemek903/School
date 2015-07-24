Rails.application.routes.draw do

  	resources :courses do
  		resources :participants, except: [:show, :index]
  		resources :lessons do
  			get '/tests/:id', to: 'tests#createTest', as: "create_test"
        resources :tests, only: [:show] do
          resources :test_questions
        end
  		end
  	end
  
	devise_for :users, controllers: {
    	registrations: 'user/registrations'
  	}

	root 'home#home'
  
end
