class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  	@user = current_user
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
