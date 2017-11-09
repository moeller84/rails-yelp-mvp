Rails.application.routes.draw do
  #get 'reviews/new'

#  get 'reviews/create'

 # get 'reviews/index'

  #get 'reviews/show'

  #get 'restaurants/new'

  #get 'restaurants/create'

  #get 'restaurants/index'

  #get 'restaurants/show'
  root to: "restaurants#index"

  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create, :index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
