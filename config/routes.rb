Rails.application.routes.draw do
namespace :api do
  resources :foods do 
    resources :food_types
end
end
end