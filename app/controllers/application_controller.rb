class ApplicationController < ActionController::Base
  before_action :set_user, only: [:instructions, :photo]

  def instructions
    @form_id = 'photo_01'
  end

  def photo
    uploader = PhotoUploader.new @user
    uploader.new_filename = photo_params[:id]

    file = photo_params[:file]

    uploader.store! file
  end

  private

  def photo_params
    params.require(:photo).permit(:id, :file)
  end

  def set_user
    @user = User.find_by session[:user]
  end
end
