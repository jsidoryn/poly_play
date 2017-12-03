class Todo < ApplicationRecord
  has_many :organised_todos
  has_many :projects, through: :organised_todos, source: :todoable, source_type: 'Project'
  has_many :weekly_plans, through: :organised_todos, source: :todoable, source_type: 'WeeklyPlan'
  has_many :daily_plans, through: :organised_todos, source: :todoable, source_type: 'DailyPlan'
  belongs_to :user
end
