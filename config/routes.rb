Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#create'
 
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/rekishi',  to: 'rekishis#new'
  get    '/jidai',  to: 'jidais#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :rekishis,          only: [:new, :create, :destroy]
  resources :jidais,          only: [:new, :create, :destroy]

  resources :users do
    ### XXX
    member do
      get :nenpyo
    end
  end
end