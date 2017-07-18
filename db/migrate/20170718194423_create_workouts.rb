class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
