class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
