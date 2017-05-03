Rails.application.routes.draw do

	root to: "personal_goals#index"

	resources :personal_goal_trackers
	resources :users
	resources :personal_goals


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
