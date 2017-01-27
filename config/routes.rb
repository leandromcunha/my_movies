Rails.application.routes.draw do
  resources :actors
  get 'movies'=> 'movies#index'
  get 'movies/new' => 'movies#new'
  get 'movies/:id' => 'movies#show'
  post 'movies'    => 'movies#create'
  get 'movies/:id/edit' => 'movies#edit'
  put 'movies/:id' => 'movies#update'



  #get 'movies/show'

  #get 'movies/new'

  #get 'movies/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'movie' => 'movies#index'
end
