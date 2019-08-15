Rails.application.routes.draw do
    root 'static_pages#home'

  resources :static_pages
    get '/about', to: 'static_pages#about', as: 'about/charlie'
 
  resources :lists
  resources :movies
  resources :activitys
  resources :shoplists

    ##get '/movies', to: 'movies#show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
