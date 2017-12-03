class CreateDailyPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_plans do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.date :plan_date

      t.timestamps
    end
  end
end
