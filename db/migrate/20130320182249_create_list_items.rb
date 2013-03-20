class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :task
      t.string :priority
      t.date :deadline
      t.boolean :complete

      t.timestamps
    end
  end
end
