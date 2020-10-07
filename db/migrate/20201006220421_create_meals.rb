class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.string :name
      t.float :calories
      t.float :carbs
      t.float :fat
      t.float :protein

      t.timestamps
    end
  end
end
