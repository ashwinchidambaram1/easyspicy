Rails.application.routes.draw do
  get 'users/new'

  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :users
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end
