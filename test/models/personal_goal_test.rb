require 'test_helper'

class PersonalGoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save personal goal without name" do 
	  personal_goal = PersonalGoal.new
	  assert_not personal_goal.save
  end
end
