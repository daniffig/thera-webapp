class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)

    session[:user] = @user

    redirect_to :instructions
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
