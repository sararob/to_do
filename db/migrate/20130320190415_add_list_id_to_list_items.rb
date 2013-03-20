class AddListIdToListItems < ActiveRecord::Migration
  def change
    add_column :list_items, :list_id, :integer
    add_index :list_items, :list_id
  end
end
