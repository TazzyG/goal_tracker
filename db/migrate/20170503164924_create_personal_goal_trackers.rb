class CreatePersonalGoalTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_goal_trackers do |t|
    	t.string :personal_goal_id, index: true
    	t.integer :record_amount
    	t.float :progress
      t.timestamps
    end
  end
end
