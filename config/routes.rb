ActionController::Routing::Routes.draw do |map|
  map.root :controller => "drug"
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.location '/location', :controller => 'sessions', :action => 'location'  
  map.resource :session
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action/'
end
