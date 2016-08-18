Rails.application.routes.draw do
	root 'welcome#index'
	resources :likes, only: [:create, :destroy]
	resources :users, only: [:new, :create, :edit, :update, :destroy]
	resources :sessions, only: [:new, :create]
	delete '/logout', to: "sessions#destroy", as: "signout"
  resources :statuses, only: [:new, :create, :edit, :update, :destroy]
end
