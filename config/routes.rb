Rails.application.routes.draw do
  
  # resources :employees
  # resources :sales
  resources :products do
    collection do
      get 'sales'
      get 'employees'
    end
  end



  resources :stores do
    # get 'sales'
    get 'sales', on: :member
    member do
      get 'sales'
      get 'employees'
    end
    resources :employees do
      resources :sales
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
