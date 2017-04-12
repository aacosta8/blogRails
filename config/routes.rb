Rails.application.routes.draw do
  default_url_options :host => "example.com"
  resources :articles do
    resources :comments, only: [:create, :update, :destroy] 
  end
  devise_for :users
  root 'welcome#index'
end
