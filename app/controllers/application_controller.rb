class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
before_action :configure_permitted_parameters, if: :devise_controller?

protected
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:account_update, keys:[:email, :password, :password_confirmation, :current_password, :name, :lastname, :country, :address, :postalcode, :position,
    :bio, :managementimage, :links])
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :password, :password_confirmation, :current_password, :name, :lastname, :country, :address, :postalcode, :position,
      :bio, :managementimage, :links])
    end

    private
    def layout_by_resource
      if devise_controller? && resource_name == :management && action_name == 'new'
        "devise"
    elsif devise_controller? && resource_name == :management && action_name == 'edit'
      'management'
    else
      "application"
    end
  end
end
