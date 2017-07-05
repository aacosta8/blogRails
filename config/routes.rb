Rails.application.routes.draw do
  resources :categories
  resources :articles do
    resources :comments, only: [:create, :update, :destroy]
  end
  devise_for :users
  root 'welcome#index'

  get "/dashboard", to: "welcome#dashboard"

  put "articles/:id/publish", to: "articles#publish"
end
