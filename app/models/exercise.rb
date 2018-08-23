class Exercise < ApplicationRecord
  belongs_to :phase

  has_many :stages
end
