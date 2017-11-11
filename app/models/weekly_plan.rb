class WeeklyPlan < ApplicationRecord
  has_many :organised_todos, as: :todoable, dependent: :destroy
  has_many :todos, through: :organised_todos
end
