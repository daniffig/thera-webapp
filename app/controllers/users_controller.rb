class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params.merge({ last_session_id: session[:session_id] }))

    if @user.valid?
      sign_in(@user)

      redirect_to photos_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end