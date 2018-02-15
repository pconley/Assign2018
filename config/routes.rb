Rails.application.routes.draw do

  root to: 'public/pages#home'

  namespace :public do
    get 'pages/show/:page' => "pages#show", as: 'pages'
    get 'pages/about'
    get 'pages/error'
    get 'pages/home'
  end

  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/auth/logout" => "auth0#logout", as: 'logout'

  resources :cogs
  resources :widgets
  resources :agencies
  resources :contacts
  get "/contacts/search", to: 'contacts#search', as: 'search'
  get "/pages/error", to: 'pages#error', as: 'error'
  get "/pages/:page"   => "pages#show", as: 'pages'
  get "/dashboards/:dashboard" => "dashboards#show", as: 'dashboards'
end
