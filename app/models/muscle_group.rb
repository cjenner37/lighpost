class MuscleGroup < ApplicationRecord
  has_many :muscle_group_exercises
  has_many :exercises, through: :muscle_group_exercises
end
