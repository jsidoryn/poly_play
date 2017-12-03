Rails.application.routes.draw do
  root to: 'todos#index'
  devise_for :users

  resources :todos do
    member do
      get 'add_to_day'
    end
  end

  concern :todoable do
    resources :todos do
      member do
        get 'add_to_resource'
        get 'remove_from_resource'
        # should be post
      end
    end
  end

  resources :projects, :weekly_plans, :daily_plans do
    concerns :todoable
  end
end
