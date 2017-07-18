class CreateWorkoutExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_exercises do |t|
      t.references :workout, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
