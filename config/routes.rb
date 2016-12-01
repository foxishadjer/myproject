Rails.application.routes.draw do
	resources :profils 
	resources :offres do 
		collection do 
			get "list"
		end
	end
	root 'profils#index'

end
