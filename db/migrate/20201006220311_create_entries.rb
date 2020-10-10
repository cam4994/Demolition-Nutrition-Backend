class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :journal_id
      t.integer :meal_id
      t.string :category
      t.float :servings

      t.timestamps
    end
  end
end
