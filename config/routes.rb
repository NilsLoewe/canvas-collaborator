Canvas::Application.routes.draw do

  resources :businessmodels do
    resources :valueproposition
  end

  root :to => 'static_pages#home'

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

end
