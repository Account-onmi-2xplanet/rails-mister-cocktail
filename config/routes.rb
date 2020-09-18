Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  get    "cocktails",          to: "cocktails#index"
  get "cocktails/new", to: "cocktails#new", as: :new_cocktail
  post "cocktails", to: "cocktails#create"

  get "cocktails/:cocktail_id/doses/new", to: "doses#new", as: :new_cocktail_dose 
  post "cocktails/:cocktail_id/doses", to: "doses#create", as: :cocktail_doses
  
  get "cocktails/:id", to:"cocktails#show", as: :cocktail
  
  
  resources :doses, only: [ :destroy ]

end
