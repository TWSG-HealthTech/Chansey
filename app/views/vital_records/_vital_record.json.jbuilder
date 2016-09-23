json.extract! vital_record, :id, :height, :weidht, :pulse, :tempurature, :bp_high, :bp_low, :created_at, :updated_at
json.url vital_record_url(vital_record, format: :json)