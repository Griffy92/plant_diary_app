Rails.application.routes.draw do
	root :to => 'pages#home'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users, :only => [:new, :create]
	resources :journals
	resources :plants

	get '/login' => 'session#new' #sign in page
	post '/login' => 'session#create' #sign in form posted 
	delete '/login' => 'session#destroy' # log out
end
