class RemoveExerciseIdFromMuscleGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :muscle_groups, :exercise_id, :bigint
  end
end
