class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :exercise_id
      t.integer :journal_id
      t.float :duration

      t.timestamps
    end
  end
end
