ResqueTestApp::Application.routes.draw do
  resources :jobs
  root :to => 'jobs#index'
  mount Resque::Server.new, :at => "/resque" 
end
