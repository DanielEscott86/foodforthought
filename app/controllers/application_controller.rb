class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    def after_sign_in_path_for(resource)
      '/profile'
    end
  
    before_action :configure_permitted_parameters, if: :devise_controller?
    #protecting database with strong params
    protected
      
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
    
end
