class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done, null: false, default: false
      t.integer :minutes_estimated_to_complete
      t.belongs_to :list

      t.timestamps
    end
    add_index :tasks, :list_id
  end
end
