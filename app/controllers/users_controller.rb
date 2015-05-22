class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  	@user = current_user
  end

  def profile
    @user = User.find(params[:id])
  end
end
