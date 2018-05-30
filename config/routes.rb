Rails.application.routes.draw do
  post 'report/email'

  root to: 'patients#index'

  resources :patients do
  	resources :events
  	resources :medicines
  end

  resources :organs, only: [:index] do
    resources :reactions, only: [:index]
  end

  resources :antibiotics, only: [:index]
  resources :doses, only: [:index]
  resources :severities, only: [:index]
  resources :frequencies, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
