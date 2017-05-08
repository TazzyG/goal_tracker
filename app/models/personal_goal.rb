class PersonalGoal < ApplicationRecord
  belongs_to :user
  has_many :personal_goal_trackers

  validates_presence_of :name, :type_of_outcome, :target 

  def progress
  	if self.measured_by = "decrease"
  		self.progress = (self.personal_goal_trackers.first.record_amount) - (self.personal_goal_trackers.last.record_amount)
  	elsif self.measured_by = "increase" 
  		self.progress = (self.personal_goal_trackers.last.record_amount) - (self.personal_goal_trackers.first.record_amount)
  	elsif self.measured_by = "maintain"
  		self.progress = (self.personal_goal.target) - (self.personal_goal_trackers.last.record_amount)
  	elsif self.measured_by = "eliminate"
  		self.progress = self.personal_goal_trackers.last.record_amount
		end
  end

  def progress_in_percent
  	@progress_in_percent = (((self.progress.to_f)/(self.target))*100).round
  end
end
