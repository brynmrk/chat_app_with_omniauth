class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :authenticate_user!
  before_filter :set_time_zone

  def set_time_zone
    #current user is a devise method see https://github.com/plataformatec/devise
    Time.zone = current_user.time_zone if current_user
  end
  
  protected
    def layout_by_resource
      if devise_controller?
        "devise"
      else
        "application"
      end
    end
end
