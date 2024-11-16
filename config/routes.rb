Rails.application.routes.draw do
  # get 'searches/new'
  # get 'searches/search'

  # post 'searches/search'

  # get 'weathers/index'
  # get 'weathers/show'
  # get 'weathers/edit'
  # get 'weathers/update'
  resources :weathers 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  
  #added 111524 0856
  get "searches" => "searches#search", as: :searches
  get "searches/new" => "searches#new", as: :search_new
  post "searches" => "searches#search", as: :post_searches
  #added 111524 0856 



  #get "searches" => "searches#search", as: :searches

  resources :get_weathers

end
