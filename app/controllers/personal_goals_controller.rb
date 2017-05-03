class PersonalGoalsController < ApplicationController
	before_action :set_personal_goal, only: [:show, :edit, :update, :destroy]

	def index 
		@personal_goals = PersonalGoal.all
	end

	def show
	end

	private
	def set_personal_goal
		@personal_goal = PersonalGoal.find(params[:id])
	end
	def personal_goal_params 
		params.require(:personal_goal).permit(:name, :user_name, :type_of_outcome, :target, :measured_by)
	end

end