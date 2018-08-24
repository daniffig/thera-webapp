class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :stage

  mount_uploader :photo, PhotoUploader

  def store_dir
    "#{user.store_dir}"
  end

  def new_filename(original_filename)
    "#{stage.base_id}__#{Time.now.nsec}#{File.extname(original_filename)}"
  end
end
