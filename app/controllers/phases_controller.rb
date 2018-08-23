class PhasesController < ApplicationController
  before_action :redirect_to_sign_in, unless: :user_signed_in?

  before_action :set_phase

  def show
    @user = current_user
  end

  private

  def set_phase
    @phase = Phase.find(params[:id])
  end

end
