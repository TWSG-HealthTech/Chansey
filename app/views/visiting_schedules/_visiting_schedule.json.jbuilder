json.extract! visiting_schedule, :id, :appointment_time, :nurse_id, :patient_id, :created_at, :updated_at
json.url visiting_schedule_url(visiting_schedule, format: :json)