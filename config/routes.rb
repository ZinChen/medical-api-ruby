Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'medical_procedure/search/', to: 'medical_procedure#search'
      get 'medical_procedure/:id', to: 'medical_procedure#show'
      get 'medical_procedure/', to: 'medical_procedure#index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
