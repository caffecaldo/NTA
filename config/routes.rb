NTA::Application.routes.draw do
  match 'students/report2' => 'Students#report2'
  match 'students/report' => 'Students#report'
  resources :students

  resources :libraries

  resources :year_end_reviews

  resources :notes

  resources :promotions

  #this_month = Date.today.strftime("%Y-%m")

  #match 'attendances' => redirect('/attendances/' + Date.today.strftime("%Y-%m"))

  resources :attendances

  #match 'attendances/:year_month' => 'Attendances#index'

  #match 'attendances/new/:class_date/:student_id' => 'Attendances#new', :as => :add_attendance

  #resources :attendances do
  #  member do
  #    put :set_class_hours
  #  end
  #end

  resources :ranks

  #resources :reports
  #match 'report2' => redirect('/students/report2')
  match 'report'  => redirect('/students/report')

  get "home/index"
  
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
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
