Rails.application.routes.draw do
  get 'movies/index'

  get 'movies/show'

  get 'movies/new'

  get 'movies/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'movie' => 'movies#index'
end
