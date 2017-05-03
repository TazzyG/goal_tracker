class CreatePersonalGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_goals do |t|
      t.string :name
      t.integer :user_id, index: true
      t.string :type_of_outcome
      t.integer :target
      t.float :progress
      t.date :start
      t.datetime :end
      t.string :measured_by
      t.datetime :target_date

      t.timestamps
    end
  end
end
