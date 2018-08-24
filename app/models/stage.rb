class Stage < ApplicationRecord
  belongs_to :exercise

  has_many :photos

  def phase
    exercise.phase
  end

  def base_id
    "phase_#{phase.id}__exercise_#{exercise.id}__stage_#{id}"
  end
end
