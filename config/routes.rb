AutocompleteDemo::Application.routes.draw do
  root :to => 'pages#index'
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end
