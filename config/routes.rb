Bullfarmoast::Application.routes.draw do
  resources :enquiries
  resources :attractions
  
  get "availability", :controller => "enquiries", :action => "new"
  get "pages/show_blogfeed", :controller => "pages", :action => "show_blogfeed"
  
  # everything else goes to pages
  resources :pages
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  get "/sitemap", :controller => 'sitemap', :action => "index"


  get ":id", :controller => "pages", :action => "show"
  
  # Legacy re-directs
  get "/d/fr/index" => redirect("/fr/")
  get "/d/de/index" => redirect("/de/")
  get "/d/nl/index" => redirect("/nl/")
  get "/a/availability" => redirect("/availability")
  get "/d/bodiamCastle"  => redirect("/attractions/Bodiam_Castle")
  get "/d/bodiamcastle"  => redirect("/attractions/Bodiam_Castle")
  get "/d/merriments.html" => redirect("/attractions/Merriments_Gardens_and_Nursery")
  get "/places" => redirect("/attractions")
  get "/d/scotney" => redirect("/attractions/Scotney_Castle_Garden")
  get "/d/sheffieldParkGardens" => redirect("/attractions/Sheffield_Park_Garden")
  get "/d/sissinghurst" => redirect("/attractions/Sissinghurst_Castle")
  get "/d/places/BedgeburyPinetum" => redirect("/attractions/Bedgebury_Pinetum")
  get "/d/places/GreatCompGarden" => redirect("/attractions/Great_Comp_Garden")
  get "/d/places/PashleyManorGardens" => redirect("/attractions/Pashley_Manor_Gardens")
  get "/d/places/GreatDixter" => redirect("/attractions/Great_Dixter")
  get "/d/:id" => redirect("/%{id}")
  
  root :to => 'pages#show', :defaults => { :id => 'index' }

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  # any named page
  
end
