class CreateMuscleGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :muscle_groups do |t|
      t.references :exercise, foreign_key: true
      t.string :muscles

      t.timestamps
    end
  end
end
