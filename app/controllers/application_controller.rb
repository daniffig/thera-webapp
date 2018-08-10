class ApplicationController < ActionController::Base

  private

  def current_user
    return unless session[:user_id]

    @current_user ||= User.find(session[:user_id])
  end

  def sign_in(user)
    user.sign_in(session)
  end

  def user_signed_in?
    current_user.present?
  end

end
