module MissionControl; end;
class MissionControl::Engine < ::Rails::Engine
  isolate_namespace MissionControl
end

# TODO: Deleting these engines stops the error appearing
MissionControl::Engine.routes.draw do
  resources :projects
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'projects#index'
end
