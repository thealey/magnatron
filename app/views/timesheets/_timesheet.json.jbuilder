json.extract! timesheet, :id, :user_id, :client_id, :submitted, :paid, :submitted_date, :description, :created_at, :updated_at
json.url timesheet_url(timesheet, format: :json)
