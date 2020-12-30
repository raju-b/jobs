Rails.application.routes.draw do
  root 'jobs#new'

  resources :jobs do
  	collection do
  		get :filter
  	end
  end

end
