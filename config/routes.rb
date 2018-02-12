Rails.application.routes.draw do

  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/auth/logout" => "auth0#logout", as: 'logout'

  resources :cogs
  resources :widgets
  resources :agencies
  resources :contacts
  root to: 'pages#about'
  get "/contacts/search", to: 'contacts#search', as: 'search'
  get "/pages/error", to: 'pages#error', as: 'error'
  get "/pages/:page"   => "pages#show", as: 'pages'
  get "/dashboards/:dashboard" => "dashboards#show", as: 'dashboards'
end
