require 'api_constraints'
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  namespace :api, defaults: { format: :json },
    #constraints: { subdomain: 'api' }, 
    path: '/api/'  do
    scope module: :v1 do
      # We are going to list our resources here
      resources :mocs, :only => [:show]
    end
  end
end
