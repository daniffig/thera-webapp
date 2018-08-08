class ApplicationController < ActionController::Base
  def instructions
    @user = User.find_by session[:user]
  end
end
