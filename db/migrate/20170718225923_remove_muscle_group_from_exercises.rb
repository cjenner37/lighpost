class RemoveMuscleGroupFromExercises < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :muscle_group, :string
  end
end
