class AddImageableToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :imageable_id, :integer
    add_column :images, :imageable_type, :string
    remove_column :images, :exercise_id
  end
end
