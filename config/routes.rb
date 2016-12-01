Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
resources :demandeurs
resources :demandes do
	collection do
		get "liste"
	end
end
root 'demandeurs#index'
end
