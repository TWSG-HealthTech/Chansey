class AddNurseAndPatientToVisitingSchedules < ActiveRecord::Migration
  def change
    add_reference :visiting_schedules, :nurse, index: true, foreign_key: true
    add_reference :visiting_schedules, :patient, index: true, foreign_key: true
  end
end
