Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index show] do
    resources :doses, only: [:create]
    resources :ingredients, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
