class CreateWeeklyPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :weekly_plans do |t|
      t.string :title

      t.timestamps
    end
  end
end
