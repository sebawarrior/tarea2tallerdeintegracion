class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
      # protect_from_forgery with: :null_session
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)
  end

end
