class PersonalGoalTrackersController < ApplicationController
	before_action :set_personal_goal_tracker, only: [:show, :edit, :update, :destroy]

	def index 
		@personal_goal_trackers = PersonalGoalTracker.all
	end

	def show
	end

	def new
		
	end

	def create

	end

	private
	def set_personal_goal_tracker
		@personal_goal_tracker = PersonalGoalTracker.find(params[:id])
	end
	def personal_goal_tracker_params 
		params.require(:personal_goal_trackers).permit(:personal_goal_id, :record_amount
	end

end