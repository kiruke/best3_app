Rails.application.routes.draw do
  root 'items#search'
  resources :items do
    collection do
      get 'search'
    end
  end
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :users
end
