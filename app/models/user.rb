class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :todos
  has_many :projects
  has_many :weekly_plans
  has_many :daily_plans

  def find_or_create_daily_plan_and_backfill(date)
    @daily_plan || daily_plans.find_or_create_by(plan_date: date)
    create_backfill(date.yesterday) unless daily_plans.where(plan_date: date.yesterday).take
  end

  def create_backfill(date)
    find_or_create_daily_plan_and_backfill(date)
  end
end
