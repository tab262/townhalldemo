Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  namespace :api, defaults: { format: :json },
                                  constraints: { subdomain: 'api' }, path: '/'  do
  end
end
