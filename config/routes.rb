Rails.application.routes.draw do
  resources :institutions, only: %i[index show] do
    collection do
      get 'search', to: 'institutions#search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'institutions#index'
end
