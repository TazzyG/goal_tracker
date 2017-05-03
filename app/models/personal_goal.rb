class PersonalGoal < ApplicationRecord
  belongs_to :user
  has_many :personal_goal_trackers

  validates_presence_of :name, :type_of_outcome, :target 
end
