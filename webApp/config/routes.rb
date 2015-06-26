Rails.application.routes.draw do
  root 'home_users#index'
  
# resources :home_users, :as => :user do
  resources :home_users do 
  	resources :intros
  	resources :buttons
  	resources :pixes
  end

# resources :about_users, :as => :about do
  resources :about_users do
  	resources :contacts
  end

end
