class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :user, foreign_key: true
      t.references :workout, foreign_key: true
      t.boolean :tried
      t.boolean :favorited

      t.timestamps
    end
  end
end
