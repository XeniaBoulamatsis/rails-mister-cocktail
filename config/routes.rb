Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end
end
# get '/restaurants', to: 'restaurants#index',
# post '/restaurants', to: 'restaurants#create',
# get '/restaurants/new', to: 'restaurants#new',
# get '/restaurants/:id', to: 'restaurants#show',
# delete "tasks/:id", to: "tasks#destroy"
