# See how all your routes lay out with "rake routes"

Links::Application.routes.draw do
  
  resources :links do
    get 'hot',  :on => :collection
    put 'vote', :on => :member
  end
  
  root :to => 'links#index'
  
end
