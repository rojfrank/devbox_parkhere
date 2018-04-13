Rails.application.routes.draw do
  
  get 'parks/pictures'

  # get 'parks/find'
  get 'parks/find', controller: :parks, action: :find, alias: 'find'

  # get 'parks/rent'
  get 'parks/rent', controller: :parks, action: :rent, alias: 'rent'

  # get 'parks/quality'
  get 'parks/quality', controller: :parks, action: :quality, alias: 'quality'

  # get 'parks/register'
  get 'parks/register', controller: :parks, action: :register, alias: 'register'

  get 'pages/login_propietary' 

  get 'pages/login_user' 

  get 'pages/register_propietary'  

  get 'pages/register_user' 
    
  get 'parks/find_map', controller: :parks, action: :find_map, alias: 'find_map'
    
  get 'parks/services', controller: :parks, action: :services, alias: 'services'
    
  get 'parks/register/services', controller: :parks, action: :register_services, alias: 'register_services'
    
  get 'parks/register/images', controller: :parks, action: :register_images, alias: 'register_images'

  get 'pages/register_serv_adici'

  get 'pages/add_images_est'

  get 'pages/bk_add_images_est'

  get 'pages/califi_estacio'

  root 'pages#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
