Rails.application.routes.draw do
  root 'home_users#index'
  
  resources :home_users do 
  	resources :intros
  	resources :buttons
  	resources :pixes
  end
end
