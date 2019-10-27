json.extract! appointment, :id, :visit, :patient_id, :physician_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
