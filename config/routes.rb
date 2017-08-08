Rails.application.routes.draw do
	root 'pages#home'
	namespace :api, { defaults: { format: :json } } do

	end
end
