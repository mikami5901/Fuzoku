json.extract! booking, :id, :girl_id, :reserve_start, :reserve_finish, :created_at, :updated_at
json.url booking_url(booking, format: :json)
