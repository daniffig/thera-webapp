class PhotosController < ApplicationController
  before_action :redirect_to_sign_in, unless: :user_signed_in?

  def index
    @user = current_user
  end

  def create
    @photo = current_user.photos.new photo_params

    if @photo.save
      head :no_content
    else
      render status: :bad_request
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:stage_id, :photo)
  end
end
