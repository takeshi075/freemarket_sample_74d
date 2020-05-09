Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items do
    member do
      get "buy"
      get "complete_buy"
    end
  end
  resources :users, except: :index do
    collection do
      get "address"
      get "complete_signup"
      get "complete_logout"
    end
  end
end
