class Stage < ApplicationRecord
  belongs_to :exercise

  has_many :photos

  def modal_id
    "p#{phase.id}e#{exercise.id}s#{id}-video-modal"
  end

  def phase
    exercise.phase
  end
end
