class RemovePostIdFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :post_id, :bigint
  end
end
