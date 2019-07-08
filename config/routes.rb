Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
  get 'about', to: "pages#about"

  #adds show update edit delete create
  resources :articles
end
