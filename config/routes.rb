require "#{Rails.root}/lib/constraints/app_subdomain_constraint.rb"

Rails.application.routes.draw do

  devise_for :users

  # App subdomain routes
  constraints(AppSubdomainConstraint) do
    devise_for :app_users
    get '/', to: 'web_apps/landing#index'
    get '/home', to: 'web_apps/home#index'
  end

  # Main web routes.
  get "/home" => "home#index"
  root to: "landing#index"

end
