class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @events = @user.admin_events
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_user
    redirect_to root_path unless current_user == @user
  end
end
