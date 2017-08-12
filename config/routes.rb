Rails.application.routes.draw do
  devise_for :users, only: []
	root 'pages#home'

	namespace :api, { defaults: { format: :json } } do
		resource :login, only: [:create], controller: :sessions
    resource :signup, only: [:create], controller: :registrations
    resources :contacts, except: [:new, :edit]
	end
end
