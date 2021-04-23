Rails.application.routes.draw do
  
  resources :cuisines
  resources :recipes
  
  devise_for :users do
    
    resources:recipes
    
  end  
    
  root 'static_pages#home'
  
  mount Commontator::Engine => '/commontator'
  
  get '/' => 'static_pages#home'

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'
  
  get '/recipes' => 'recipes#index'
  
  get '/makeadmin/:id' => 'static_pages#makeadmin'
  
  get '/removeadmin/:id' => 'static_pages#removeadmin' 
    
  get '/cuisine/:title' => 'static_pages#cuisine'
  
  get '/profile' => 'static_pages#profile'
  
  get '/users/' => 'static_pages#user' 
  
  post '/search' => 'recipes#search'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
