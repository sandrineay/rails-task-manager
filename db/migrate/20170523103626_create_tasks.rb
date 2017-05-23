class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :deadline
      t.integer :priority

      t.timestamps
    end
  end
end
