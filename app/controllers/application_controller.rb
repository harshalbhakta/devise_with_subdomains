class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Sub domain web apps.
  before_action :load_subdomain_app, if: :is_subdomain_app?
  before_action :authenticate_app_user!, if: :is_subdomain_app?

  # Main web app.
  before_action :authenticate_user!, unless: :is_subdomain_app?

  private

  def load_subdomain_app
    @subdomain_app = App.find_by!(subdomain: request.subdomain)
  end

  def is_subdomain_app?
    return (request.subdomain.present? && request.subdomain != "www")
  end

end
