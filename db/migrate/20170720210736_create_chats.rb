class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :sender_id
      t.string :receiver_id
      t.string :message
      t.boolean :read

      t.timestamps
    end
  end
end
