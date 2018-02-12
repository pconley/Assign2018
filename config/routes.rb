Rails.application.routes.draw do
  resources :cogs
  resources :widgets
  resources :agencies
  resources :contacts
  root to: 'contacts#index'
  get "/contacts/search", to: 'contacts#search', as: 'search'
  get "/pages/error", to: 'pages#error', as: 'error'
  get "/pages/:page"   => "pages#show", as: 'pages'
  get "/dashboards/:dashboard" => "dashboards#show", as: 'dashboards'
end
