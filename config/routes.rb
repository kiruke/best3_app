Rails.application.routes.draw do
  resources :items do
    collection do
      get 'search'
    end
  end
  root 'static_pages#top'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :users
end
