class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user_profile, only: [:show]

  def show
    @user = current_user
    @administered_events = @user.administered_events
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_user_profile
    redirect_to root_path unless current_user == User.find(params[:id])
  end
end
