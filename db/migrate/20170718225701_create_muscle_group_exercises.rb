class CreateMuscleGroupExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :muscle_group_exercises do |t|
      t.references :exercise, foreign_key: true
      t.references :muscle_group, foreign_key: true

      t.timestamps
    end
  end
end
