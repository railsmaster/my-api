Rails.application.routes.draw do
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
  	resources :posts
  	mount_devise_token_auth_for 'User', at: 'auth'
  end
  
end
