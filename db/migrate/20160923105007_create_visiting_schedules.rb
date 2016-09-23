class CreateVisitingSchedules < ActiveRecord::Migration
  def change
    create_table :visiting_schedules do |t|
      t.datetime :appointment_time

      t.timestamps null: false
    end
  end
end
