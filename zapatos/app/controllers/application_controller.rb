class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :authorize
    protected
    def authorize
        unless User.find_by(session[:user_id])
            redirect_to root_url,  notice:"Primero tienes que iniciar sesion"
        end
    end
end
