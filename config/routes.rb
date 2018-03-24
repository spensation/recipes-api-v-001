Rails.application.routes.draw do
  
  
  namespace :api do
    namespace :v1 do
      resources :recipes do
      	resources :comments
      	resources :likes
      end
    end
  end 
end