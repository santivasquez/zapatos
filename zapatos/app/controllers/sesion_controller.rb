class SesionController < ApplicationController
 skip_before_action :authorize
  def new
  end

  def create
      user = User.find_by(name: params[:name])
      if user and user.authenticate(params[:password])
          sessions[:user_id] = user.id
          redirect_to welcome_url
      else
          redirect_to login_url, alert:"nombre o contraseña invalida"
  end

  def destroy
      session[:user_id] = nil
      redirect_to login_url, alert:"sesion cerrada"
  end
end