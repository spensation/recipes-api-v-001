Rails.application.routes.draw do
 
  resources :ingredients
 root 'api/v1/recipes#index'
  
  namespace :api do
    namespace :v1 do
      resources :recipes do
      	resources :comments
      	resources :likes
      end
    end
  end 
end