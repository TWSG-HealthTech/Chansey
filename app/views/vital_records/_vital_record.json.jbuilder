json.extract! vital_record, :id, :patient_id, :height, :weight, :pulse, :temperature, :bp_high, :bp_low, :created_at, :updated_at
json.url vital_record_url(vital_record, format: :json)