Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 namespace :api do 
   get 'bitz', to: 'examples#all_bitzs'
   get 'trustees', to: 'examples#all_trustees'
 end
end
