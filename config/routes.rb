# Questions Table: Associate each question with a Q# -> I can move around questions as needed
# Answers Table: id, student_id, gender, Q_ID, answers (each row represents a student's answer to a particular question)
# Keep students table without the individual questions
# Dorms?
# Factors?

Rails.application.routes.draw do
  devise_for :students

  root('statics#landing')

  get('factor' , { :controller => 'statics', :action => 'factor' })


  #------------------------------

  # Routes for the School resource:
  # CREATE
  get('/schools/new', { :controller => 'schools', :action => 'new' })
  get('/create_school', { :controller => 'schools', :action => 'create' })

  # READ
  get('/schools', { :controller => 'schools', :action => 'index' })
  get('/schools/:id', { :controller => 'schools', :action => 'show' })

  # UPDATE
  get('/schools/:id/edit', { :controller => 'schools', :action => 'edit' })
  get('/update_school/:id', { :controller => 'schools', :action => 'update' })

  # DELETE
  get('/delete_school/:id', { :controller => 'schools', :action => 'destroy' })
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

  # Routes for the Response resource:
  # CREATE
  get('/responses/new', { :controller => 'responses', :action => 'new' })
  get('/create_response', { :controller => 'responses', :action => 'create' })

  # READ
  get('/responses', { :controller => 'responses', :action => 'index' })
  get('/responses/:id', { :controller => 'responses', :action => 'show' })

  # UPDATE
  get('/responses/:id/edit', { :controller => 'responses', :action => 'edit' })
  get('/update_response/:id', { :controller => 'responses', :action => 'update' })

  # DELETE
  get('/delete_response/:id', { :controller => 'responses', :action => 'destroy' })
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get('/questions/new', { :controller => 'questions', :action => 'new' })
  get('/create_question', { :controller => 'questions', :action => 'create' })

  # READ
  get('/questions', { :controller => 'questions', :action => 'index' })
  get('/questions/:id', { :controller => 'questions', :action => 'show' })

  # UPDATE
  get('/questions/:id/edit', { :controller => 'questions', :action => 'edit' })
  get('/update_question/:id', { :controller => 'questions', :action => 'update' })

  # DELETE
  get('/delete_question/:id', { :controller => 'questions', :action => 'destroy' })
  #------------------------------

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
