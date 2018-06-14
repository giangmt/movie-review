Rails.application.routes.draw do
  root "static_pages#home"

  resources :movies , only: [:index, :show]
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks"
   }
end
