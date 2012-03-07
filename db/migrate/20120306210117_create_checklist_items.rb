class CreateChecklistItems < ActiveRecord::Migration
  def change
    create_table :checklist_items do |t|
      t.string :text
      t.boolean :done
      t.integer :position
      t.integer :todo_id

      t.timestamps
    end
  end
end
