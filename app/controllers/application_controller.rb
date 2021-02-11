class ApplicationController < ActionController::Base
  before_action :configure_permitted_paremeters, if: :devise_controller?

  private

  def configure_permitted_paremeters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender_id, :profile])
  end
end
