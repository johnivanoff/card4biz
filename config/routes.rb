Card4biz::Application.routes.draw do
  
  resources :accounts

  resources :contacts
  
  root :to => 'contacts#index'
   
  end
