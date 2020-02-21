Rails.application.routes.draw do
  # Cocktails has many ingredients
  # Ingredients are in many cocktails
  # Doses have one ingredient and one cocktail
  # Now express this
  resources :cocktails
  # resources :cocktails do
  #   resources :ingredients, only: [:index, :new, :create] do
  #     resources

  #   end # here if you need cocktail id for these actions
  # end
  # resources :ingredients, only: [:show, :edit, :update, :destroy] # -> here if you don't
end
