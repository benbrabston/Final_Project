# Questions Table: Associate each question with a Q# -> I can move around questions as needed
# Answers Table: id, student_id, gender, Q_ID, answers (each row represents a student's answer to a particular question)
# Keep students table without the individual questions
# Dorms?
# Factors?

Rails.application.routes.draw do
  # Routes for the Student resource:
  # CREATE
  get('/students/new', { :controller => 'students', :action => 'new' })
  get('/create_student', { :controller => 'students', :action => 'create' })

  # READ
  get('/students', { :controller => 'students', :action => 'index' })
  get('/students/:id', { :controller => 'students', :action => 'show' })

  # UPDATE
  get('/students/:id/edit', { :controller => 'students', :action => 'edit' })
  get('/update_student/:id', { :controller => 'students', :action => 'update' })

  # DELETE
  get('/delete_student/:id', { :controller => 'students', :action => 'destroy' })
  #------------------------------

  # Routes for the Dorm resource:
  # CREATE
  get('/dorms/new', { :controller => 'dorms', :action => 'new' })
  get('/create_dorm', { :controller => 'dorms', :action => 'create' })

  # READ
  get('/dorms', { :controller => 'dorms', :action => 'index' })
  get('/dorms/:id', { :controller => 'dorms', :action => 'show' })

  # UPDATE
  get('/dorms/:id/edit', { :controller => 'dorms', :action => 'edit' })
  get('/update_dorm/:id', { :controller => 'dorms', :action => 'update' })

  # DELETE
  get('/delete_dorm/:id', { :controller => 'dorms', :action => 'destroy' })
  #------------------------------

  # Landing Page
  get('/', { :controller => 'statics', :action => 'landing' })
  #------------------------------


  # Routes for the M_factor resource:
  # CREATE
  get('/m_factors/new', { :controller => 'm_factors', :action => 'new' })
  get('/create_m_factor', { :controller => 'm_factors', :action => 'create' })

  # READ
  get('/m_factors', { :controller => 'm_factors', :action => 'index' })
  get('/m_factors/:id', { :controller => 'm_factors', :action => 'show' })

  # UPDATE
  get('/m_factors/:id/edit', { :controller => 'm_factors', :action => 'edit' })
  get('/update_m_factor/:id', { :controller => 'm_factors', :action => 'update' })

  # DELETE
  get('/delete_m_factor/:id', { :controller => 'm_factors', :action => 'destroy' })
  #------------------------------

  # Routes for the F_factor resource:
  # CREATE
  get('/f_factors/new', { :controller => 'f_factors', :action => 'new' })
  get('/create_f_factor', { :controller => 'f_factors', :action => 'create' })

  # READ
  get('/f_factors', { :controller => 'f_factors', :action => 'index' })
  get('/f_factors/:id', { :controller => 'f_factors', :action => 'show' })

  # UPDATE
  get('/f_factors/:id/edit', { :controller => 'f_factors', :action => 'edit' })
  get('/update_f_factor/:id', { :controller => 'f_factors', :action => 'update' })

  # DELETE
  get('/delete_f_factor/:id', { :controller => 'f_factors', :action => 'destroy' })
  #------------------------------


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
