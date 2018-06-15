Rails.application.routes.draw do
  get 'reviews/new'
  root "static_pages#home"

  resources :movies , only: [:index, :show] do
  	resources :reviews, only: [:new, :create]
  end
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks"
   }
end
