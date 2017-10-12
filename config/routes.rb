Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


	resource :greenhouse do
		resources :plant_sectors
	end

	resources :plants

	root to: "greenhouses#index"

	get '/greenhouse/work', to: 'xtreme_farm_bot#work'
	get '/greenhouse/environment_aging', to: 'xtreme_farm_bot#environment_aging'

end
