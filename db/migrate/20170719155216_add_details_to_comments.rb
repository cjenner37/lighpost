class AddDetailsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :commentable_id, :string
    add_column :comments, :commentable_type, :string
    remove_column :comments, :post_id
  end
end
