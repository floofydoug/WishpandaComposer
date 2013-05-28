WishpandaComposer::Application.routes.draw do
  resources :contests


  authenticated :user do
    root :to => 'contests#index'
  end
  root :to => "contests#index"
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users

  match "/auth/twitter/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end