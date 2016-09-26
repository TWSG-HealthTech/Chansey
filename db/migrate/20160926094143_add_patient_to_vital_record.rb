class AddPatientToVitalRecord < ActiveRecord::Migration
  def change
    add_reference :vital_records, :patient, index: true, foreign_key: true
  end
end
