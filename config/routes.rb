Rails.application.routes.draw do
    root 'static_pages#home'

   resources :static_pages
 
   resources :lists

   resources :movies
  
   resources :activitys
  
   resources :shop_lists


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
