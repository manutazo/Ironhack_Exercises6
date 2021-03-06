Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:new, :edit] do
        resources :tasks, except: [:new, :edit, :update]
        put 'task/:id/completed', to: 'tasks#complete'
      end
    end
  end
end
