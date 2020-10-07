class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :sex
      t.float :weight
      t.float :height
      t.float :bodyfat
      t.integer :age
      t.string :goal
      t.string :activity_level
      t.string :image

      t.timestamps
    end
  end
end
