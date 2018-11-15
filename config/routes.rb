Rails.application.routes.draw do\
resources :stores, only: [:index, :new, :create]
resources :transaktions, only: [:index, :new, :create]
resources :items, only: [:index, :new, :create]
resources :categories, only: [:index, :new, :create]
resources :sold_items, only: [:index, :new, :create]

  get 'transaktions/:date', to: 'transaktions#date'


  get 'items/:name', to: 'items#show'
  delete 'items/:name', to: 'items#destroy', as: 'destroy_user'


  get 'stores/:name', to: 'stores#show'
  get 'stores/:name/sold_items', to: 'stores#sold_items'
  delete 'stores/:name', to: 'store#destroy', as: 'destroy_store'

  get 'categories/:name', to: 'categories#show'
  delete 'categories/:name', to: 'categories#destroy', as: 'destroy_category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
