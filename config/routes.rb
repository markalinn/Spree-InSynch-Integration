Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  resources :mas_products, :only => [:show], :defaults => { :format => 'json' }
end
