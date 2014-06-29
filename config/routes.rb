
Rails.application.routes.draw do
  get '/' => 'gyms#index'
  get '/gyms/:id' => 'gyms#show'
  post '/post_rating' => 'ratings#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
end
