Prospects::Application.routes.draw do
  root :to => 'admin#login'
  post 'admin(/:action)' , :controller=>:admin
  get 'admin(/:action)' , :controller=>:admin
  
  post 'prospects(/:action)' , :controller=>:prospects
  get 'prospects(/:action)' , :controller=>:prospects
  
  get 'list(/:entity)', :controller=>:lsd, :action=>:list
  get 'feed(/:entity)', :controller=>:lsd, :action=>:feed
  
  post '(/:action(/:entity(/:id)))', :controller=>:lsd
end
