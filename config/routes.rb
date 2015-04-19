Rails.application.routes.draw do
 # devise i mount zawsze na gorze / root na koncu
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :mems do 
  	collection do
  		get 'my'
  		get 'inactive'
  	end
  end
    resources :mems

default_url_options :host => "localhost:3000"

root 'mems#index'


end
