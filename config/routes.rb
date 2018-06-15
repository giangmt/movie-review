Rails.application.routes.draw do
  root "static_pages#home"

  resources :movies , only: [:index, :show] do
 	  resources :reviews, only: [:new, :create]
  end
  
  resources :interactives, only: :create
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks"
   }
end
