class AddExerciseIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :exercise, foreign_key: true
  end
end
