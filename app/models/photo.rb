class Photo < ApplicationRecord
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  def store_dir
    "#{user.store_dir}"
  end

  def new_filename(original_filename)
    "#{exercise_id}_#{stage_id}_#{Time.now.nsec}#{File.extname(original_filename)}"
  end
end
