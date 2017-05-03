mary = User.create! name: "Mary"
joe = User.create! name: "Joe"

weight = PersonalGoal.create!  user_id: mary.id, name: "lose weight",  type_of_outcome: "Reduce", target: 30, start: 2.weeks.ago, measured_by: "lb", target_date: Time.new.advance(weeks: 15)
mini_apps = PersonalGoal.create! user_id: joe.id, name: "mini_app",  type_of_outcome: "Increase", target: 50, start: 3.weeks.ago, measured_by: "mini_app", target_date: Time.new.advance(weeks: 50)

day_1 = PersonalGoalTracker.create! personal_goal_id: 1, record_amount: 200, created_at: 4.weeks.ago
day_2 = PersonalGoalTracker.create! personal_goal_id: 1, record_amount: 198, created_at: 3.weeks.ago
day_3 = PersonalGoalTracker.create! personal_goal_id: 1, record_amount: 196, created_at: 2.weeks.ago
day_4 = PersonalGoalTracker.create! personal_goal_id: 1, record_amount: 190, created_at: 1.weeks.ago

day_1a = PersonalGoalTracker.create! personal_goal_id: 2, record_amount: 1, created_at: 4.weeks.ago
day_2a = PersonalGoalTracker.create! personal_goal_id: 2, record_amount: 3, created_at: 3.weeks.ago
day_3a = PersonalGoalTracker.create! personal_goal_id: 2, record_amount: 2, created_at: 2.weeks.ago
day_4a = PersonalGoalTracker.create! personal_goal_id: 2, record_amount: 0, created_at: 1.weeks.ago
