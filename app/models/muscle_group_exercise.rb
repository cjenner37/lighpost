class MuscleGroupExercise < ApplicationRecord
  belongs_to :exercise
  belongs_to :muscle_group
end
