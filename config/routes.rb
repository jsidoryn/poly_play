Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos

  concern :todoable do
    resources :todos do
      member do
        get 'add_to_resource'
        get 'remove_from_resource'
      end
    end
  end

  resources :projects do 
    concerns :todoable
  end

  resources :weekly_plans do 
    concerns :todoable
  end

end
