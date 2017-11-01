class WebApps::LandingController < WebApps::BaseController

  skip_before_action :authenticate_app_user!

  def index
  end

end
